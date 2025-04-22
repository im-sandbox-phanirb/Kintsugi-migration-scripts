# Policies for Repository Management in Your Enterprise

You can enforce policies to control how members of your enterprise manage repositories. You can also allow organization owners to manage policies for repository management.

---

## Configuring the Default Visibility of New Repositories

Each time someone creates a new repository within your enterprise, that person must choose a visibility for the repository. When you configure a default visibility setting for the enterprise, you choose which visibility is selected by default. For more information on repository visibility, see [About repositories](https://docs.github.com/en/repositories).

If an enterprise owner disallows members from creating certain types of repositories, members will not be able to create that type of repository even if the visibility setting defaults to that type. For more information, see [Enforcing a policy for repository creation](#enforcing-a-policy-for-repository-creation).

1. In the top-right corner of GitHub Enterprise Server, click your profile photo, then click **Enterprise settings**.
2. On the left side of the page, in the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Options**.
4. Under "Default repository visibility", use the drop-down menu and select a default visibility.

> **Warning:** If you add an image attachment to a pull request or issue comment, anyone can view the anonymized image URL without authentication, even if the pull request is in a private repository, or if private mode is enabled. To prevent unauthorized access to the images, ensure that you restrict network access to the systems that serve the images, including your GitHub Enterprise Server instance.

---

## Enforcing a Policy for Base Repository Permissions

Across all organizations owned by your enterprise, you can set a base repository permission level (none, read, write, or admin) for organization members, or allow owners to administer the setting on the organization level.

1. Click your profile photo, then click **Enterprise settings**.
2. In the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Member privileges**.
4. Under "Base permissions", select the dropdown menu and click a policy.

---

## Enforcing a Policy for Repository Creation

Across all organizations owned by your enterprise, you can allow members to create repositories, restrict repository creation to organization owners, or allow owners to administer the setting on the organization level.

1. Click your profile photo, then click **Enterprise settings**.
2. In the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Member privileges**.
4. Under "Repository creation", select a policy.
5. If you selected "Members can create repositories", select one or more repository types.
6. Optionally, select "Block the creation of user namespace repositories".

---

## Enforcing a Policy for Forking Private or Internal Repositories

Across all organizations owned by your enterprise, you can allow people with access to fork private or internal repositories, never allow forking, or allow owners to administer the setting.

1. Click your profile photo, then click **Enterprise settings**.
2. In the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Member privileges**.
4. Under "Repository forking", select the dropdown menu and click a policy.
5. If forking is enabled, select a policy for where users can fork repositories.

---

## Enforcing a Policy for Inviting Collaborators to Repositories

Across all organizations owned by your enterprise, you can control who can invite collaborators.

1. Click your profile photo, then click **Enterprise settings**.
2. In the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Member privileges**.
4. Under "Repository invitations", select the dropdown menu and click a policy.

---

## Enforcing a Policy for the Default Branch Name

You can set and enforce the default branch name for new repositories.

1. Click your profile photo, then click **Enterprise settings**.
2. In the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Member privileges**.
4. Under "Default branch name", enter the default branch name.
5. Optionally, select "Enforce across this enterprise".
6. Click **Update**.

---

## Enforcing a Policy for Deploy Keys

You can control deploy key creation across your enterprise.

1. Click your profile photo, then click **Enterprise settings**.
2. In the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Member privileges**.
4. Under "Deploy keys", select a policy.
5. Click **Save**.

> **Warning:** Disabling deploy keys will disable existing keys and break scripts, apps, or workflows using them.

---

## Enforcing a Policy for Changes to Repository Visibility

You can control who can change repository visibility.

1. Click your profile photo, then click **Enterprise settings**.
2. In the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Member privileges**.
4. Under "Repository visibility change", select the dropdown menu and click a policy.

---

## Enforcing a Policy for Repository Deletion and Transfer

You can control who can delete or transfer repositories.

1. Click your profile photo, then click **Enterprise settings**.
2. In the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Member privileges**.
4. Under "Repository deletion and transfer", select the dropdown menu and click a policy.

---

## Enforcing a Policy for Deleting Issues

You can control who can delete issues.

1. Click your profile photo, then click **Enterprise settings**.
2. In the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Member privileges**.
4. Under "Repository issue deletion", select the dropdown menu and click a policy.

---

## Enforcing a Policy for Git Push Limits

You can configure file size limits for repositories.

1. Click your profile photo, then click **Enterprise settings**.
2. In the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Options**.
4. Under "Repository upload limit", select a maximum object size.
5. Optionally, select "Enforce on all repositories".

---

## Enforcing a Policy for Displaying Member Names

You can control the display of profile names in comments.

1. Click your profile photo, then click **Enterprise settings**.
2. In the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Options**.
4. Under "Allow members to see the comment author's profile name", select a policy.
5. Optionally, select "Enforce for all repositories on the instance".

---

## Configuring the Merge Conflict Editor for Pull Requests

You can require users to resolve merge conflicts locally.

1. Click your profile photo, then click **Enterprise settings**.
2. In the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Options**.
4. Under "Conflict editor for pull requests between repositories", select **Disabled**.

---

## Configuring Force Pushes

You can block force pushes enterprise-wide, per repository, or per organization/user.

- Follow the steps outlined above under "Enterprise settings" or "Site admin" to configure these settings.

---

## Configuring Anonymous Git Read Access

You can enable anonymous Git read access enterprise-wide or per repository.

- Follow the steps outlined above under "Enterprise settings" or "Site admin" to configure these settings.

> **Warning:** Anonymous Git access is unauthenticated and unencrypted. Use with caution.
