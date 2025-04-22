# About Organizations

Your team can collaborate on GitHub by using an organization account, which serves as a container for your shared work and gives the work a unique name and brand.

Each person that uses GitHub always signs into a personal account, and multiple personal accounts can collaborate on shared projects by joining the same organization account. A subset of these personal accounts can be given the role of organization owner, which allows those people to granularly manage access to the organization's resources using sophisticated security and administrative features.

You can invite people to join your organization, then give these organization members a variety of roles that grant different levels of access to the organization and its data.

---

## About Pre-Defined Organization Roles

Pre-defined organization roles are roles that are available by default in every organization. They include both organization permissions and repository permissions that apply to all repositories in the organization. The following pre-defined roles are built into every organization:

- **All-repository read:** Grants read access to all repositories in the organization.
- **All-repository write:** Grants write access to all repositories in the organization.
- **All-repository triage:** Grants triage access to all repositories in the organization.
- **All-repository maintain:** Grants maintenance access to all repositories in the organization.
- **All-repository admin:** Grants admin access to all repositories in the organization.
- **CI/CD admin:** Grants admin access to manage Actions policies, runners, runner groups, hosted compute network configurations, secrets, variables, and usage metrics for an organization.
- **Security manager:** Grants the ability to manage security policies, security alerts, and security configurations for an organization and all its repositories.

For more information, see [Using organization roles](https://docs.github.com/en/organizations/managing-organization-settings/organization-roles).

---

## About Organization Roles

You can assign people to a variety of organization-level roles to control your members' access to your organization and its resources. For more granular control, you can create a custom organization role. For more information, see [About custom organization roles](https://docs.github.com/en/organizations/managing-organization-settings/custom-organization-roles).

### Organization Owners

Organization owners have complete administrative access to your organization. This role should be limited to at least two people in your organization. For more information, see [Maintaining ownership continuity for your organization](https://docs.github.com/en/organizations/managing-organization-settings/maintaining-ownership-continuity-for-your-organization).

### Organization Members

The default, non-administrative role for people in an organization is the organization member. By default, organization members can create repositories and projects.

### Security Managers

The security manager role is an organization-level role that organization owners can assign to any member or team in the organization. It gives permission to view security alerts and manage settings for security features across your organization, as well as read permission for all repositories.

For more information, see [Managing security managers in your organization](https://docs.github.com/en/organizations/managing-organization-settings/managing-security-managers-in-your-organization).

---

## Outside Collaborators

An outside collaborator is a person who has access to one or more organization repositories but is not explicitly a member of the organization. This is useful for consultants or temporary employees.


---

## Assigning Multiple Owners

If an organization only has one owner, the organization's projects can become inaccessible if the owner is unreachable. To ensure that no one loses access to a project, we recommend that at least two people within each organization have the owner role.

---

## Accessing Your Organization's Settings

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.

---

## Adding People to Your Organization

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Click the name of your organization.
3. Under your organization name, click **People**.
4. Click **Add member**.
5. In the search field, type the username, full name, or email address of the person you want to invite and click **Add**.
6. If the person was an organization member within the last three months, select whether to restore their privileges or start fresh, then click **Add and reinstate** or **Add and start fresh**.
7. If the person has never been a member or if you cleared their privileges, under **Role in the organization**, select an organization role for the user.
8. If your organization belongs to an enterprise account with more than one license, under **License**, choose a license for the user.
9. Optionally, to add the user to a team in the organization, select the team.
10. Click **Add member**.

---

## Revoking a User's Membership

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Click the name of your organization.
3. Under your organization name, click **People**.
4. Select the member or members you'd like to remove from the organization.
5. Above the list of members, select the **X members selected...** dropdown menu, and click **Remove from organization**.
6. Review the member or members who will be removed, then click **Remove members**.

---

## Viewing Organization Role Permissions

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the **Access** section of the left sidebar, click **Organization roles**, then click **Role management**.
4. To the right of any role, click **...** to view the role permissions.
5. Optionally, to hide the role permissions again, click **...**.

---

## Assigning an Organization Role

> **Note:** The "Manage custom organization roles" permission does not allow a user to assign an organization role.

A user or team can have multiple organization roles. However, you can only assign one role at a time. To assign multiple roles to the same user or team, repeat the following instructions for each role you want to assign.

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the **Access** section of the sidebar, click **Organization roles**, then click **Role assignments**.
4. Click **New role assignment**.
5. Search for users or teams that you want to assign a role to, then select the role you want to give to these users and teams.
6. Click **Add new assignment**.

---

## Viewing Organization Role Assignments

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the **Access** section of the sidebar, click **Organization roles**, then click **Role assignments**.
4. Optionally, to filter by role assignments for users, click the **Users** tab. To filter by role assignments for teams, click the **Teams** tab.
5. To view role assignments, to the right of the user or team, click **NUMBER roles**.

---

## Deleting an Organization Role Assignment

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the **Access** section of the sidebar, click **Organization roles**, then click **Role assignments**.
4. Optionally, to filter by role assignments for users, click the **Users** tab. To filter by role assignments for teams, click the **Teams** tab.
5. To delete a role, to the right of the role, click **NUMBER roles**, then click **Remove**.
6. In the pop-up window, click **Remove**.

---

## Creating a Custom Role

Organization owners and users with the "Manage custom organization roles" permission can create up to 10 custom organization roles.

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the **Access** section of the sidebar, click **Organization roles**, then click **Role management**.
4. Click **Create a role**.
5. Type a name and description for the custom role.
6. Under **Add permissions**, click the **Organization** or **Repository** tab to select the type of permissions you want to add to the custom role:
   - To add permissions for the organization, click the **Organization** tab, then select the dropdown menu and click the permissions you want your custom role to include.
   - To choose a base repository role to inherit, click the **Repository** tab, then select the dropdown menu and click# Managing Organization Roles

## Viewing Organization Role Permissions

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the **Access** section of the left sidebar, click **Organization roles**, then click **Role management**.
4. To the right of any role, click **...** to view the role permissions.
5. Optionally, to hide the role permissions again, click **...**.

---

## Assigning an Organization Role

> **Note:** The "Manage custom organization roles" permission does not allow a user to assign an organization role.

A user or team can have multiple organization roles. However, you can only assign one role at a time. To assign multiple roles to the same user or team, repeat the following instructions for each role you want to assign.

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the **Access** section of the sidebar, click **Organization roles**, then click **Role assignments**.
4. Click **New role assignment**.
5. Search for users or teams that you want to assign a role to, then select the role you want to give to these users and teams.
6. Click **Add new assignment**.

---

## Viewing Organization Role Assignments

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the **Access** section of the sidebar, click **Organization roles**, then click **Role assignments**.
4. Optionally, to filter by role assignments for users, click the **Users** tab. To filter by role assignments for teams, click the **Teams** tab.
5. To view role assignments, to the right of the user or team, click **NUMBER roles**.

---

## Deleting an Organization Role Assignment

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the **Access** section of the sidebar, click **Organization roles**, then click **Role assignments**.
4. Optionally, to filter by role assignments for users, click the **Users** tab. To filter by role assignments for teams, click the **Teams** tab.
5. To delete a role, to the right of the role, click **NUMBER roles**, then click **Remove**.
6. In the pop-up window, click **Remove**.

---

## Creating a Custom Role

Organization owners and users with the "Manage custom organization roles" permission can create up to 10 custom organization roles.

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the **Access** section of the sidebar, click **Organization roles**, then click **Role management**.
4. Click **Create a role**.
5. Type a name and description for the custom role.
6. Under **Add permissions**, click the **Organization** or **Repository** tab to select the type of permissions you want to add to the custom role:
   - To add permissions for the organization, click the **Organization** tab, then select the dropdown menu and click the permissions you want your custom role to include.
   - To choose a base repository role to inherit, click the **Repository** tab, then select the dropdown menu and click the base role you want to include in the custom role. For more information about the available base repository roles, see [Base roles for repository access](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-roles-for-an-organization).
7. Once you've selected a base repository role, you can add additional permissions to the custom role. For more information about the available permissions, see [Additional permissions for repository access](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-roles-for-an-organization).

> **Note:** Adding a repository role and permissions to a custom organization role is currently in public preview and subject to change.

8. Click **Create role**.

---

## Editing a Custom Role

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the **Access** section of the sidebar, click **Organization roles**, then click **Role management**.
4. Next to the role you want to edit, select **...**, then click **Edit role**.
5. Change the role as required, then click **Update role**.

---

## Deleting a Custom Role

1. In the upper-right corner of GitHub, select your profile photo, then click **Your organizations**.
2. Next to the organization, click **Settings**.
3. In the **Access** section of the sidebar, click **Organization roles**, then click **Role management**.
4. Next to the role you want to delete, select **...**, then click **Delete role**.
5. Read the details in the dialog to confirm you want to delete the role, then click **Delete role**.