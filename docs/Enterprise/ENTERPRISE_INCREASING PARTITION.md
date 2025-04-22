# Increasing the Data Partition Size

1. Resize the existing user volume disk using your virtualization platform's tools.
2. SSH into your GitHub Enterprise Server instance. If your instance comprises multiple nodes (e.g., high availability or geo-replication), SSH into the primary node. For clusters, SSH into any node. Replace `HOSTNAME` with the hostname for your instance or the hostname/IP address of a node.  
   ```shell
   ssh -p 122 admin@HOSTNAME
   ```
3. Put the appliance in maintenance mode. For more information, see [Enabling and scheduling maintenance mode](https://docs.github.com/en/enterprise-server/admin/enterprise-support/enabling-and-scheduling-maintenance-mode).
4. Reboot the appliance to detect the new storage allocation:  
   ```shell
   sudo reboot
   ```
5. Run the `ghe-storage-extend` command to expand the `/data/user` filesystem:  
   ```shell
   ghe-storage-extend
   ```
6. Ensure system services are functioning correctly, then release maintenance mode.

---

# Increasing the Root Partition Size Using an Existing Appliance

> **Warning:** Before increasing the root partition size, you must put your instance in maintenance mode.

### Verifying the Partition Table Type

1. Determine whether the appliance has a GUID partition table:  
   ```shell
   sudo lsblk -no pttype $(findmnt -no source /)
   ```
   The result should be either `gpt` or `msdos`.

2. Follow the appropriate instructions based on the partition table type:
   - **GUID Partition Table:** See [Increasing the root partition size on a GUID partition table](#increasing-the-root-partition-size-on-a-guid-partition-table).
   - **Legacy Partition Table:** See [Increasing the root partition size on a legacy partition table](#increasing-the-root-partition-size-on-a-legacy-partition-table).

---

## Increasing the Root Partition Size on a GUID Partition Table

1. Back up your existing EFI boot partition:  
   ```shell
   sudo dd if=/dev/disk/by-label/EFIBOOT of=EFIBOOT.bak bs=1M
   ```
2. Format the disk using the `parted` command, substituting your device name for `/dev/xvdg`:  
   ```shell
   sudo parted /dev/xvdg mklabel gpt
   sudo parted -a optimal /dev/xvdg mkpart bios fat32 1MiB 2MiB
   sudo parted /dev/xvdg set 1 bios_grub on
   sudo parted -a optimal /dev/xvdg mkpart efi fat32 2MiB 512MiB
   sudo parted /dev/xvdg set 2 esp on
   sudo parted -a optimal /dev/xvdg mkpart primary 512MiB 50%
   sudo parted -a optimal /dev/xvdg mkpart primary 50% 100%
   ```
3. If your appliance is configured for high-availability or geo-replication, stop replication on each replica node:  
   ```shell
   ghe-repl-stop
   ```
4. Install the GitHub Enterprise Server software on the newly partitioned disk:  
   ```shell
   ghe-upgrade PACKAGE-NAME.pkg -s -t /dev/xvdg3
   ```
5. Run these commands on the secondary partitions of the newly added disk:  
   ```shell
   sudo dd if=/dev/disk/by-label/EFIBOOT of=/dev/xvdg2 bs=1M
   sudo mkfs.ext4 -L fallback /dev/xvdg4
   ```
6. Shut down the appliance:  
   ```shell
   sudo poweroff
   ```
7. In the hypervisor, remove the old root disk and attach the new root disk at the same location as the old root disk.
8. Start the appliance.
9. Ensure system services are functioning correctly, then release maintenance mode.
10. If your appliance is configured for high-availability or geo-replication, start replication on each replica node:  
    ```shell
    ghe-repl-start
    ```

---

## Increasing the Root Partition Size on a Legacy Partition Table

1. Format the disk using the `parted` command, substituting your device name for `/dev/xvdg`:  
   ```shell
   sudo parted /dev/xvdg mklabel msdos
   sudo parted /dev/xvdg mkpart primary ext4 0% 50%
   sudo parted /dev/xvdg mkpart primary ext4 50% 100%
   ```
2. If your appliance is configured for high-availability or geo-replication, stop replication on each replica node:  
   ```shell
   ghe-repl-stop
   ```
3. Install the GitHub Enterprise Server software on the newly partitioned disk:  
   ```shell
   ghe-upgrade PACKAGE-NAME.pkg -s -t /dev/xvdg1
   ```
4. Run the following command on the secondary partition of the newly added disk:  
   ```shell
   sudo mkfs.ext4 -L fallback /dev/xvdg2
   ```
5. Shut down the appliance:  
   ```shell
   sudo poweroff
   ```
6. In the hypervisor, remove the old root disk and attach the new root disk at the same location as the old root disk.
7. Start the appliance.
8. Ensure system services are functioning correctly, then release maintenance mode.
9. If your appliance is configured for high-availability or geo-replication, start replication on each replica node:  
   ```shell
   ghe-repl-start
   ```

---

# Adding CPU or Memory Resources for VMware ESXi

1. Communicate the upcoming downtime to your users and enable maintenance mode. 
2. Stop the instance:  
   ```shell
   sudo poweroff
   ```
3. In the VMware ESXi host using the vSphere Client, select the VM, then click **Edit Settings**.
4. Under **Hardware**, adjust the CPU or memory resources allocated to the VM.
5. Start the virtual machine.
6. After the instance has fully restarted, verify the new resource configuration:  
   ```shell
   ghe-system-info
   ```
7. Optionally, validate the changes by configuring an IP exception list to allow access from specified IP addresses.
8. Remove any user messages and disable maintenance mode.