# Branch Protection Rules on GitHub

## Creating a Branch Protection Rule

When you create a branch protection rule, the branch you specify does not need to exist yet in the repository.

> **Note:** Actors may only be added to bypass lists when the repository belongs to an organization.

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**. If you cannot see the **Settings** tab, select the dropdown menu, then click **Settings**.
3. In the **Code and automation** section of the sidebar, click **Branches**.
4. Next to **Branch protection rules**, click **Add rule**.
5. Under **Branch name pattern**, type the branch name or pattern you want to protect.
6. Optionally, enable required pull requests:
   - Select **Require a pull request before merging**.
   - To require approvals before merging, select **Require approvals** and choose the number of approvals required.
   - To dismiss stale pull request approvals when new commits are pushed, select **Dismiss stale pull request approvals when new commits are pushed**.
   - To require review from a code owner, select **Require review from Code Owners**.
   - To allow specific actors to bypass required pull requests, select **Allow specified actors to bypass required pull requests**, then search for and select the actors.
   - To restrict who can dismiss pull request reviews, select **Restrict who can dismiss pull request reviews**, then search for and select the actors.
   - To require approval of the most recent reviewable push, select **Require approval of the most recent reviewable push**.
7. Optionally, enable required status checks:
   - Select **Require status checks to pass before merging**.
   - To ensure pull requests are tested with the latest code, select **Require branches to be up to date before merging**.
   - Search for and select the status checks you want to require.
8. Optionally, select **Require conversation resolution before merging**.
9. Optionally, select **Require signed commits**.
10. Optionally, select **Require linear history**.
11. Optionally, select **Require merge queue** to merge pull requests using a merge queue.
12. Optionally, select **Require deployments to succeed before merging**, then choose the environments.
13. Optionally, make the branch read-only by selecting **Lock branch**.
14. Optionally, select **Allow fork syncing**.
15. Optionally, select **Do not allow bypassing the above settings**.
16. Optionally, enable branch restrictions:
    - Select **Restrict who can push to matching branches**.
    - To restrict the creation of matching branches, select **Restrict pushes that create matching branches**.
    - Search for and select the people, teams, or apps who will have permission to push to the protected branch or create a matching branch.
17. Optionally, under **Rules applied to everyone including administrators**, select **Allow force pushes**:
    - Select **Everyone** to allow everyone with at least write permissions to force push.
    - Select **Specify who can force push**, then search for and select the actors.
18. Optionally, select **Allow deletions**.
19. Click **Create**.

For more information, see [Branch Protection Rules](https://docs.github.com/en/enterprise-server@3.16/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

---

## Editing a Branch Protection Rule

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**. If you cannot see the **Settings** tab, select the dropdown menu, then click **Settings**.
3. In the **Code and automation** section of the sidebar, click **Branches**.
4. To the right of the branch protection rule you want to edit, click **Edit**.
5. Make your desired changes to the branch protection rule.
6. Click **Save changes**.

---

## Deleting a Branch Protection Rule

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**. If you cannot see the **Settings** tab, select the dropdown menu, then click **Settings**.
3. In the **Code and automation** section of the sidebar, click **Branches**.
4. To the right of the branch protection rule you want to delete, click **Delete**.