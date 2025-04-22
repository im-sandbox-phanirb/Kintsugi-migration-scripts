# Creating and Managing Rulesets for Repositories in Your Organization

## Introduction

You can create rulesets in your organization to control how users can interact with repositories in your organization. You can control things like who can push commits to a certain branch and how the commits must be formatted, or who can delete or rename a tag. You can also prevent people from renaming repositories.

Forks do not inherit branch or tag rulesets from their upstream repositories. However, forks owned by your organization are subject to the rulesets you create, like any other repository.

---

## Creating a Branch or Tag Ruleset

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the left sidebar, in the **Code, planning, and automation** section, click **Repository**, then click **Rulesets**.
4. You can create a ruleset targeting branches or tags:
   - To create a ruleset targeting branches, click **New branch ruleset**.
   - To create a ruleset targeting tags, click **New tag ruleset**.
5. Under **Ruleset name**, type a name for the ruleset.
6. Optionally, to change the default enforcement status, click **Disabled** and select an enforcement status. 

---

## Granting Bypass Permissions for Your Branch or Tag Ruleset

You can grant certain roles, teams, or apps bypass permissions as well as the ability to approve bypass requests for your ruleset. The following are eligible for bypass access:

- Repository admins, organization owners, and enterprise owners
- The maintain or write role, or custom repository roles based on the write role
- Teams
- Deploy keys
- GitHub Apps
- Dependabot 

### Steps to Grant Bypass Permissions:

1. In the **Bypass list** section, click **Add bypass**.
2. In the **Add bypass** modal dialog, search for the role, team, or app you would like to grant bypass permissions.
3. Select the role, team, or app from the **Suggestions** section and click **Add Selected**.
4. Optionally, to grant bypass to an actor without allowing them to push directly to a repository:
   - To the right of **Always allow**, click **...**, then click **For pull requests only**.

The selected actor is now required to open a pull request to make changes to a repository, creating a clear trail of their changes in the pull request and audit log. The actor can then choose to bypass any branch protections and merge that pull request.

---

## Choosing Which Repositories to Target in Your Organization

With your ruleset, you can choose to target:
- All repositories in your organization.
- Repositories in your organization that match a certain naming convention.
- Repositories in your organization that have custom properties.
- A list of manually selected repositories in your organization.


### Targeting All Repositories in Your Organization

1. In the **Target repositories** section, select **Target: REPOSITORIES**, then click **All repositories**.

### Targeting Repositories by Naming Convention in Your Organization

1. In the **Target repositories** section, select **Target: REPOSITORIES**, then click **Dynamic list of repositories**.
2. In the **Targeting criteria** section, select **Add a target**, then click **Include by pattern** or **Exclude by pattern**.
3. In the modal dialog, enter a repository naming pattern using fnmatch syntax, then click **Add Inclusion pattern** or **Add Exclusion pattern**. 

> **Note:** You can add multiple targeting criteria to the same ruleset. For example, you could include any repositories matching the pattern `*cat*`, then specifically exclude a repository matching the pattern `not-a-cat`.

Optionally, on the ruleset configuration page, select **Prevent renaming of target repositories**.

### Targeting Repositories by Properties in Your Organization

1. In the **Target repositories** section, select **Target: REPOSITORIES**, then click **Dynamic list by property**.
2. In the **Targeting criteria** section, select **Add a target**, then click **Include by property** or **Exclude by property**.
3. In the modal dialog, select a custom or system property from the dropdown menu, then select a value for the property.
4. Click **Add target**.

### Targeting Select Repositories in Your Organization

1. In the **Target repositories** section, select **Target: REPOSITORIES**, then click **Select repositories**.
2. In the **Targeting criteria** section, select **Select repositories**, then search for the name of each repository you would like to target.
3. Select each repository from the search results.

---

## Choosing Which Branches or Tags to Target

1. In the **Target branches** or **Target tags** section, select **Add a target**, then select how you want to include or exclude branches or tags.
2. Use fnmatch syntax to include or exclude branches or tags based on a pattern. 

> **Note:** You can add multiple targeting criteria to the same ruleset. For example, you could include the default branch, include any branches matching the pattern `*feature*`, and then specifically exclude a branch matching the pattern `not-a-feature`.

---

## Selecting Branch or Tag Protections

1. In the **Branch protections** or **Tag protections** section, select the rules you want to include in the ruleset.
2. When you select a rule, you may be able to enter additional settings for the rule. 

> **Note:** If you select **Require status checks before merging**, in the **Additional settings** section:
> - You can enter the name of each status check you would like to require. To finish adding the status check as a requirement, you must click **...**.
> - If you select **Require branches to be up to date before merging**, you must define a check for the protection to take effect.

---

## Adding Metadata Restrictions

Your metadata restrictions should be intended to increase consistency between commits in your repository. They are not intended to replace security measures such as requiring code review via pull requests.

> **Note:** If you squash merge a branch, all commits on that branch must meet any metadata requirements for the base branch.

1. In the **Restrictions** section when creating or editing a ruleset, click **Restrict commit metadata** or **Restrict branch names**.
2. Configure the settings for the restriction, then click **Add**. You can add multiple restrictions to the same ruleset.
3. To match a given regex pattern, in the **Requirement** dropdown, select **Must match a given regex pattern**.

For more complex patterns, you can select **Must match a given regex pattern** or **Must not match a given regex pattern**, then use regular expression syntax to define the matching pattern. 

---

## Finalizing Your Branch or Tag Ruleset

1. To finish creating your ruleset, click **Create**. If the enforcement status of the ruleset is set to **Active**, the ruleset takes effect immediately.
2. You can view insights for the ruleset to see how the rules are affecting your contributors. If the enforcement status is set to **Evaluate**, you can see which actions would have passed or failed if the ruleset was active. 

## Editing a Ruleset

You can edit a ruleset to change parts of the ruleset, such as the name, bypass permissions, or rules. You can also edit a ruleset to change its status, such as enabling or temporarily disabling a ruleset.

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the left sidebar, in the **Code, planning, and automation** section, click **Repository**, then click **Rulesets**.
4. On the **Rulesets** page, click the name of the ruleset you want to edit.
5. Change the ruleset as required.
6. At the bottom of the page, click **Save changes**.

---

## Deleting a Ruleset

> **Tip:** If you want to temporarily disable a ruleset but do not want to delete it, you can set the ruleset's status to **Disabled**. For more information, see [Editing a ruleset](#editing-a-ruleset).

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the left sidebar, in the **Code, planning, and automation** section, click **Repository**, then click **Rulesets**.
4. Click the name of the ruleset you want to delete.
5. To the right of the ruleset's name, select **...**, then click **Delete ruleset**.

---

## Viewing Insights for Rulesets

You can view insights for rulesets to see how rulesets are affecting the repositories in your organization. On the **Rule Insights** page, you will see a timeline of the following user actions:

- Actions that have been checked against one or more rulesets and passed.
- Actions that have been checked against one or more rulesets and failed.
- Actions where someone has bypassed one or more rulesets.

If a ruleset is running in **Evaluate** mode, you can see actions that would have passed or failed if the ruleset had been active.

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the left sidebar, in the **Code, planning, and automation** section, click **Repository**, then click **Rule insights**.
4. On the **Rule Insights** page, use the dropdown menus at the top of the page to filter the actions by ruleset, repository, actor, and time period.
5. To see which specific rules failed or required a bypass, click **...**, then expand the name of the ruleset.

---

## Managing Requests to Bypass Push Rules

You can view and manage all requests for bypass privileges on the **Bypass Requests** page, located under the Rules settings of the repository.

1. On GitHub, navigate to the main page of the repository.
2. Under your repository name, click **Settings**. If you cannot see the **Settings** tab, select the dropdown menu, then click **Settings**.
3. Click **Bypass Requests**.

### Filtering Requests

You can filter requests by:
- **Approver:** Member of the bypass list.
- **Requester:** Contributor making the request.
- **Timeframe**
- **Status:** The following statuses are assigned to a request:
  - **Cancelled:** The request has been cancelled by the contributor.
  - **Completed:** The request has been approved and the commit(s) have been pushed to the repository.
  - **Denied:** The request has been reviewed and denied.
  - **Expired:** The request has expired. Requests are valid for 7 days.
  - **Open:** The request has either not yet been reviewed, or has been approved but the commit(s) have not been pushed to the repository.

### Reviewing Requests

When a contributor requests bypass privileges to push a commit containing restricted content:
- Members of the bypass list receive an email notification containing a link to the request.
- Members of the bypass list have 7 days to review and either approve or deny the request before it expires.

The contributor is notified of the decision by email and must take the required action:
- If the request is approved, the contributor can push the commit containing the restricted content to the repository.
- If the request is denied, the contributor must remove the restricted content from the commit to successfully push the commit to the repository.