# Restricting Access by Personal Access Tokens

Enterprise owners can prevent their members from using personal access tokens to access resources owned by the enterprise. You can configure these restrictions for personal access tokens (classic) and fine-grained personal access tokens independently with the following options:

- **Allow organizations to configure access requirements:** Each organization owned by the enterprise can decide whether to restrict or permit access by personal access tokens. *(Default setting)*
- **Restrict access via personal access tokens:** Personal access tokens cannot access organizations owned by the enterprise. SSH keys created by these personal access tokens will continue to work. Organizations cannot override this setting.
- **Allow access via personal access tokens:** Personal access tokens can access organizations owned by the enterprise. Organizations cannot override this setting.

By default, organizations and enterprises allow access by both fine-grained personal access tokens and personal access tokens (classic).

Regardless of the chosen policy, personal access tokens will have access to public resources within the organizations managed by your enterprise.

### Configuring Personal Access Token Restrictions

1. In the top-right corner of GitHub Enterprise Server, click your profile photo, then click **Enterprise settings**.
2. On the left side of the page, in the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Personal access tokens**.
4. Select either the **Fine-grained tokens** or **Tokens (classic)** tab to enforce this policy based on the token type.
5. Under **Fine-grained personal access tokens** or **Restrict personal access tokens (classic) from accessing your organizations**, select your access policy.
6. Click **Save**.

---

# Enforcing an Approval Policy for Fine-Grained Personal Access Tokens

Enterprise owners can manage approval requirements for each fine-grained personal access token with the following options:

- **Allow organizations to configure approval requirements:** Enterprise owners can allow each organization in the enterprise to set its own approval requirements for the tokens. *(Default setting)*
- **Require approval:** Enterprise owners can require that all organizations within the enterprise must approve each fine-grained personal access token that can access the organization. These tokens can still read public resources within the organization without needing approval.
- **Disable approval:** Fine-grained personal access tokens created by organization members can access organizations owned by the enterprise without prior approval. Organizations cannot override this setting.

By default, organizations require approval of fine-grained personal access tokens but can disable this requirement. Using the settings above, you can force your organizations to have approvals enabled or disabled.

> **Note:** Only fine-grained personal access tokens, not personal access tokens (classic), are subject to approval. Any personal access token (classic) can access organization resources without prior approval, unless the organization or enterprise has restricted access by personal access tokens (classic). For more information about restricting personal access tokens (classic), see [Restricting access by personal access tokens](#restricting-access-by-personal-access-tokens) on this page and [Setting a personal access token policy for your organization](https://docs.github.com/en/enterprise-server@latest/organizations/managing-access-to-your-organizations-repositories/setting-a-personal-access-token-policy-for-your-organization).

### Configuring Approval Requirements for Fine-Grained Personal Access Tokens

1. In the top-right corner of GitHub Enterprise Server, click your profile photo, then click **Enterprise settings**.
2. On the left side of the page, in the enterprise account sidebar, click **Policies**.
3. Under **Policies**, click **Personal access tokens**.
4. Select the **Fine-grained tokens** tab.
5. Under **Require approval of fine-grained personal access tokens**, select your approval policy.
6. Click **Save**.