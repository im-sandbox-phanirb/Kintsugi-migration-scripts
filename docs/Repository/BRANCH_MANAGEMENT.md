# Branch Management on GitHub

## Viewing Branches in Your Repository

1. Navigate to the main page of the repository.
2. From the file tree view on the left, select the **branch dropdown menu**, then click **View all branches**. You can also find the branch dropdown menu at the top of the integrated file editor.

### Branch Views

- **Your branches:** Shows all branches you’ve pushed to (excluding the default branch), with the most recent branches first. Available in repositories where you have push access.
- **Active branches:** Shows all branches (excluding the default branch) that anyone has committed to within the last three months, ordered by the most recent commits.
- **Stale branches:** Shows all branches that no one has committed to in the last three months, ordered by the oldest commits. Use this list to identify branches to delete.
- **All branches:** Shows the default branch followed by all other branches, ordered by the most recent commits.

### Searching for Branches

Use the search field in the top right to perform a simple, case-insensitive, sub-string search on branch names. Advanced query syntax is not supported.

---

## Renaming a Branch

1. Navigate to the main page of the repository.
2. From the file tree view on the left, select the **branch dropdown menu**, then click **View all branches**.
3. Next to the branch you want to rename, select the **...** dropdown menu, then click **Rename branch**.
4. Type a new name for the branch.
5. Review the information about local environments, then click **Rename branch**.

---

## Updating a Local Clone After a Branch Name Changes

After renaming a branch on GitHub, collaborators with a local clone must update their clone:

```bash
git branch -m OLD-BRANCH-NAME NEW-BRANCH-NAME
git fetch origin
git branch -u origin/NEW-BRANCH-NAME NEW-BRANCH-NAME
git remote set-head origin -a
```

Optionally, remove tracking references to the old branch name:

```bash
git remote prune origin
```

---

## Changing the Default Branch

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**. If you cannot see the **Settings** tab, select the dropdown menu, then click **Settings**.
3. Under **Default branch**, to the right of the default branch name, click **...**.
4. Select the branch dropdown menu and click a branch name.
5. Click **Update**.
6. Read the warning, then click **I understand, update the default branch**.

---

## Deleting a Branch Used for a Pull Request

You can delete a branch associated with a pull request if the pull request has been merged or closed and there are no other open pull requests referencing the branch.

1. Navigate to the main page of the repository.
2. Under your repository name, click **Pull requests**.
3. To see a list of closed pull requests, click **Closed**.
4. In the list of pull requests, click the pull request associated with the branch you want to delete.
5. Near the bottom of the pull request, click **Delete branch**.

> **Note:** The **Delete branch** button is not displayed if there is an open pull request for the branch.

---

## Restoring a Deleted Branch

You can restore the head branch of a closed pull request.

1. Navigate to the main page of the repository.
2. Under your repository name, click **Pull requests**.
3. To see a list of closed pull requests, click **Closed**.
4. In the list of pull requests, click the pull request associated with the branch you want to restore.
5. Near the bottom of the pull request, click **Restore branch**.