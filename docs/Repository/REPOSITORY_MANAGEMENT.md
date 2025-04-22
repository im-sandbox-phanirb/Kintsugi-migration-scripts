# Repository Management on GitHub

## Creating a New Repository from the Web UI

1. In the upper-right corner of any page, select **+**, then click **New repository**.
2. Optionally, to create a repository with the directory structure and files of an existing repository:
   - Select the **Choose a template** dropdown menu and click a template repository.
   - To include the directory structure and files from all branches in the template, select **Include all branches**.
3. Use the **Owner** dropdown menu to select the account you want to own the repository.
4. Type a name for your repository and an optional description.
5. Choose a repository visibility. For more information, see [About repositories](https://docs.github.com/en/repositories).
6. Optionally, pre-populate your repository with:
   - A **README** file to describe your project.
   - A **.gitignore** file to define ignore rules.
   - Custom properties if required for repository creation.
7. Click **Create repository**.

---

## Creating a Repository from a Template

1. On GitHub, navigate to the main page of the repository.
2. Above the file list, click **Use this template**.
3. Use the **Owner** dropdown menu to select the account you want to own the repository.
4. Type a name for your repository and an optional description.
5. Choose a repository visibility.
6. Optionally, select **Include all branches** to include the directory structure and files from all branches in the template.
7. Click **Create repository from template**.

---

## Creating a Template Repository

1. Create a repository. For more information, see [Creating a new repository](#creating-a-new-repository-from-the-web-ui).
2. Navigate to the main page of the repository.
3. Under your repository name, click **Settings**.
4. Select **Template repository**.

> **Note:** Your template repository cannot include files stored using Git LFS.

---

## Renaming a Repository

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**.
3. In the **Repository Name** field, type the new name of your repository.
4. Click **Rename**.

> **Note:** All existing information (e.g., issues, wikis, stars, followers) will redirect to the new name. Update local clones using:
```bash
git remote set-url origin NEW_URL
```

---

## Transferring a Repository

### Transferring a Repository Owned by Your Personal Account

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**.
3. At the bottom of the page, in the **Danger Zone** section, click **Transfer**.
4. Read the information about transferring a repository.
5. Under **New owner**, choose how to specify the new owner:
   - To choose one of your organizations, select **Select one of my organizations**, then select an organization.
   - To specify an organization or username, select **Specify an organization or username**, then type the name.
6. Optionally, type a new name for the repository.
7. Type the repository name to confirm, then click **I understand, transfer this repository**.

### Transferring a Repository Owned by Your Organization

1. Sign into your personal account with admin or owner permissions in the organization.
2. Navigate to the main page of the repository.
3. Under your repository name, click **Settings**.
4. At the bottom of the page, in the **Danger Zone** section, click **Transfer**.
5. Read the information about transferring a repository.
6. Under **New owner**, choose how to specify the new owner:
   - To choose one of your organizations, select **Select one of my organizations**, then select an organization.
   - To specify an organization or username, select **Specify an organization or username**, then type the name.
7. Optionally, type a new name for the repository.
8. Type the repository name to confirm, then click **I understand, transfer this repository**.

---

## Deleting a Repository

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**.
3. On the **General** settings page, scroll down to the **Danger Zone** section and click **Delete this repository**.
4. Click **I want to delete this repository**.
5. Read the warnings and click **I have read and understand these effects**.
6. Type the name of the repository to confirm.
7. Click **Delete this repository**.

---

## Restoring a Deleted Repository

Deleted repositories can usually be restored within 90 days by an enterprise owner on your GitHub Enterprise Server instance.