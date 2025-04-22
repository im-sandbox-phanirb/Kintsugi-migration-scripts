# Repository Settings on GitHub

## Classifying Your Repository with Topics

### About Topics

With topics, you can explore repositories in a particular subject area, find projects to contribute to, and discover new solutions to a specific problem. Topics appear on the main page of a repository. You can click a topic name to search for other repositories with that topic.

- To browse the most used topics, go to `HOSTNAME/topics/`.
- Repository admins can add any topics they'd like to a repository. Helpful topics include the repository's intended purpose, subject area, community, or language.
- Public, private, and internal repositories can have topics, but private repositories will only appear in topic search results if you have access to them.

**Topic Guidelines:**
- Use lowercase letters, numbers, and hyphens.
- Use 50 characters or less.
- Add no more than 20 topics.

### Adding Topics to Your Repository

> **Note:** Topic names are always public, even if you create the topic from within a private repository.

1. Navigate to the main page of the repository.
2. In the top right corner of the page, to the right of "About," click the gear icon.
3. Under **Topics**, start typing the topic you want to add. Select a matching topic from the dropdown or create a new topic.
4. Optionally, click **+** to add or **x** to decline suggested topics.
5. Click **Save changes**.

---

## About Code Owners

Code owners are automatically requested for review when someone opens a pull request that modifies code they own. Code owners are not automatically requested to review draft pull requests. When a draft pull request is marked as ready for review, code owners are notified.

- Required reviews can optionally require approval from a code owner before merging a pull request. 
- To see who owns a file, hover over the shield icon in the file header.

### CODEOWNERS File Location

Create a `CODEOWNERS` file in one of the following locations:
- `.github/`
- Root directory
- `docs/`

GitHub will use the first `CODEOWNERS` file it finds in that order.

### CODEOWNERS Syntax

- Patterns follow most of the same rules as `.gitignore` files.
- Assign code owners using `@username` or `@org/team-name`.
- Paths are case-sensitive.
- Lines with invalid syntax are skipped.

**Example CODEOWNERS File:**
```plaintext
# Default owners for everything in the repository
*       @global-owner1 @global-owner2

# Specific owners for JavaScript files
*.js    @js-owner

# Owners for files in the /docs directory
/docs/  @doctocat
```

---

## Disabling Issues

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**.
3. Under **Features**, deselect **Issues**.

---

## Setting Repository Visibility

### Changing a Repository's Visibility

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**.
3. In the **Danger Zone** section, click **Change visibility**.
4. Select a visibility option.
5. Type the repository name to confirm.
6. Click **I understand, change repository visibility**.

**Visibility Options:**
- **Private:** Only specific users can access the repository.
- **Internal:** Accessible to all members of the enterprise.
- **Public:** Accessible to everyone.

**Consequences of Changing Visibility:**
- Stars and watchers may be erased.
- Forks may be detached or visibility may change.
- Anonymous Git read access may be affected.

---

## Managing Access to Your Repository

### Filtering the List of Teams and People

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**.
3. In the **Access** section of the sidebar, click **Collaborators & teams**.
4. Use the search field to find a team or person. Optionally, use dropdown menus to filter your search.

### Changing Permissions for a Team or Person

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**.
3. In the **Access** section of the sidebar, click **Collaborators & teams**.
4. Next to the team or person, select the **Role** dropdown menu and choose a new role.

### Inviting a Team or Person

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**.
3. In the **Access** section of the sidebar, click **Collaborators & teams**.
4. Click **Add people** or **Add teams**.
5. Search for the team or person, then select a name from the list.
6. Under **Choose a role**, select a repository role and click **Add**.

### Removing Access for a Team or Person

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**.
3. In the **Access** section of the sidebar, click **Collaborators & teams**.
4. Next to the team or person, click **Remove**.

---

## Enabling Email Notifications for Pushes

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**.
3. In the **Integrations** section of the sidebar, click **Email notifications**.
4. In the **Address** field, type up to two email addresses.
5. Optionally, set an **Approved header** to verify email integrity.
6. Click **Setup notifications**.

---

## Limiting Branch and Tag Updates in a Single Push

1. Navigate to the main page of the repository.
2. Under your repository name, click **Settings**.
3. Under **Pushes**, select **Limit how many branches and tags can be updated in a single push**.
4. Enter the maximum number of branches and tags that can be updated in a single push.
5. Click **Save changes**.

> **Recommendation:** Use the default maximum of 5 branch or tag updates allowed in one push.