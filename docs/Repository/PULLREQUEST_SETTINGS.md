# Configuring Pull Request Settings on GitHub

## Configuring Commit Merging for Pull Requests

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**. If you cannot see the **Settings** tab, select the dropdown menu, then click **Settings**.
3. Under **Pull Requests**, select **Allow merge commits**. This allows contributors to merge a pull request with a full history of commits.
4. Optionally, under **Allow merge commits**, select the dropdown menu and choose the format of the commit message presented to contributors when merging:
   - Default: Includes the pull request number and title (e.g., `Merge pull request #123 from patch-1`).
   - Pull request title only.
   - Pull request title and description.

> **Note:** If there is a protected branch rule requiring a linear commit history, you must allow squash merging, rebase merging, or both.

---

## Configuring Commit Squashing for Pull Requests

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**. If you cannot see the **Settings** tab, select the dropdown menu, then click **Settings**.
3. On the **General** settings page, scroll down to the **Pull Requests** section.
4. Under **Pull Requests**, select **Allow squash merging**. This allows contributors to merge a pull request by squashing all commits into a single commit.
5. Optionally, under **Allow squash merging**, select the dropdown menu and choose the format of the default squash commit message:
   - Default: Uses the commit title and message if the pull request contains only 1 commit, or the pull request title and list of commits if the pull request contains 2 or more commits.
   - Pull request title only.
   - Pull request title and commit details.
   - Pull request title and description.

> **Note:** If there is a protected branch rule requiring a linear commit history, you must allow squash merging, rebase merging, or both.

---

## Configuring Commit Rebasing for Pull Requests

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**. If you cannot see the **Settings** tab, select the dropdown menu, then click **Settings**.
3. Under **Pull Requests**, select **Allow rebase merging**. This allows contributors to merge a pull request by rebasing their individual commits onto the base branch.

> **Note:** If there is a protected branch rule requiring a linear commit history, you must allow squash merging, rebase merging, or both.

---

## Managing Suggestions to Update a Pull Request Branch

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**. If you cannot see the **Settings** tab, select the dropdown menu, then click **Settings**.
3. Under **Pull Requests**, select or deselect **Always suggest updating pull request branches**.

---

## Managing Auto-Merge

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**. If you cannot see the **Settings** tab, select the dropdown menu, then click **Settings**.
3. On the left side of the page in the navigation bar, click **General**.
4. Toward the bottom of the page under **Pull Requests**, select or deselect **Allow auto-merge**.

---

## Managing the Automatic Deletion of Branches

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**. If you cannot see the **Settings** tab, select the dropdown menu, then click **Settings**.
3. On the **General** settings page, scroll to the **Pull Requests** section.
4. Under **Pull Requests**, select or deselect **Automatically delete head branches**.