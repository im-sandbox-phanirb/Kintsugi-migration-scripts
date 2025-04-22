
# GitHub Enterprise Server - Git LFS, Repository Management, and Restoration

## About Git Large File Storage

Git Large File Storage (Git LFS) is an open source extension to Git that allows you to work with large files the same way as other text files.

- Assets are stored on the data partition: `/data/user/storage`.
- Users cannot push Git LFS assets if Git LFS is disabled.

## Configuring Git LFS

### For the Enterprise

1. Go to **Enterprise settings**.
2. Navigate to **Policies > Options**.
3. Under **Git LFS access**, select **Enabled** or **Disabled**.

### For a Repository

1. Go to **Site admin**.
2. Search for the repository.
3. Click **Admin** > **Admin** (in the sidebar).
4. Toggle **Git LFS access**.

### For a User or Organization

1. Go to **Site admin**.
2. Search for the user/org.
3. Click **Admin** > **Admin** (in the sidebar).
4. Toggle **Git LFS access**.

## Using a Third Party Git LFS Server

1. Disable Git LFS on GitHub Enterprise.
2. Create `.lfsconfig` pointing to third party server:

```bash
git config -f .lfsconfig remote.origin.lfsurl https://THIRD-PARTY-LFS-SERVER/path/to/repo
git add .lfsconfig
git commit -m "Adding LFS config file"
```

## Migrating to a Different Git LFS Server

1. Configure a second remote:

```bash
git remote add NEW-REMOTE https://NEW-REMOTE-HOSTNAME/path/to/repo
```

2. Fetch all objects from old remote:

```bash
git lfs fetch origin --all
```

3. Push all objects to new remote:

```bash
git lfs push NEW-REMOTE --all
```

## Locking and Unlocking Repositories

### Locking

1. Go to **Site admin**, search for the repo.
2. Click **Admin**.
3. In **Single Repository Lock**, click **Lock**.

### Unlocking

Same steps as above, click **Unlock**.

## Repository Restoration

- Repositories can be restored within 90 days.
- Restoration does **not** restore:
  - Release attachments
  - Team permissions
  - Labels on issues

### Steps to Restore

1. Go to **Site admin**, search for user/org.
2. In the **Repositories** section, click **Deleted repositories**.
3. Click **Restore** beside the repo name.
