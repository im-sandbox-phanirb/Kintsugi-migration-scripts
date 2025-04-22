
# GitHub Enterprise Configuration Guide

## Configuring Visibility for Organization Membership

You can set visibility for new organization members across your enterprise to **public** or **private**. You can also prevent members from changing their visibility from the default.

You can enforce your default setting on all current organization members in your instance using a command-line utility.

### Steps

1. In the top-right corner of GitHub Enterprise Server, click your profile photo, then click **Enterprise settings**.
2. On the left side of the page, in the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Options**.
4. Under **Default organization membership visibility**, select the drop-down menu, and click **Private** or **Public**.
5. Optionally, to prevent members from changing their membership visibility from the default, select **Enforce for all enterprise members**.
6. To enforce the new setting on all existing members, use the `ghe-org-membership-update` command-line utility.

## Preventing Users from Creating Organizations

You can prevent users from creating organizations in your enterprise.

### Steps

1. In the top-right corner of GitHub Enterprise Server, click your profile photo, then click **Enterprise settings**.
2. On the left side of the page, in the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Options**.
4. Under **Users can create organizations**, use the drop-down menu and click **Enabled** or **Disabled**.

## Managing Your Role with the Enterprise Settings

You can join an organization owned by your enterprise and manage your role within the organization from the enterprise settings.

### Steps

1. In the top-right corner of GitHub Enterprise Server, click your profile photo, then click **Enterprise settings**.
2. Next to the organization you want to manage your role in, click the drop-down menu and click **Join as an organization owner** or **Join as an organization member**.

## About Organization Restoration

You can restore an organization that was previously deleted on your GitHub Enterprise Server instance via the site admin dashboard.

### Notes

- Restored organizations won’t be identical to their state prior to deletion.
- You must manually restore repositories and re-add teams and members.

## Restoring an Organization

### Steps

1. From an administrative account, in the upper-right corner, click the profile photo.
2. If not on the "Site admin" page, click **Site admin** in the upper-left.
3. Search for the organization under "Search users, organizations, enterprises, teams, repositories, gists, and applications".
4. Under **Deleted accounts**, to the right of the organization, click the dropdown and then click **Recreate**.

## Restoring Members and Teams

Use the audit log to find and manually recreate members and teams.

### Restoring Organization Members

- Search the audit log:
  ```
  action:org.add_member org:ORGANIZATION
  action:org.remove_member org:ORGANIZATION
  ```
- Manually add users using **Adding people to your organization**.

### Restoring Teams

1. Search the audit log:
    ```
    action:team.create org:ORGANIZATION
    ```
2. Manually recreate each team.

3. Add members:
    ```
    action:team.add_member team:"ORGANIZATION/TEAM"
    ```

4. Add repositories and permissions:
    ```
    action:team.add_repository team:"ORGANIZATION/TEAM"
    action:team.update_repository_permission team:"ORGANIZATION/TEAM"
    ```

> For more info, see [Restore Organization](https://docs.github.com/en/enterprise-server@3.16/admin/managing-accounts-and-repositories/managing-organizations-in-your-enterprise/restoring-a-deleted-organization)
