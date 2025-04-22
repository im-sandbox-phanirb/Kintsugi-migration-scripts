
# 👥 GitHub Enterprise Roles & Permissions

## 🔐 About Roles in an Enterprise

All users that are part of your GitHub Enterprise have one of the following roles:

### 🧑‍💼 Enterprise Owner
- Can manage **all enterprise settings**, members, and policies.
- Has **complete control** over the enterprise.
- Can take every action, including:
  - Managing administrators
  - Managing organizations
  - Managing enterprise settings
  - Enforcing policies across organizations
- ⚠️ _Enterprise owners do **not** have access to organization settings or content by default_, but can gain access by joining an organization.
- ✅ For security, it's recommended to have only a **few enterprise owners**.

### 👤 Enterprise Member
- Is a member or owner of any organization in the enterprise.
- **Cannot access or configure** enterprise settings.
- Can access **internal** repositories across the enterprise.
- May have **different levels of access** to each organization and repository.
- Can be viewed under **Enterprise > People** tab.

### 👥 Collaborators
- People with collaborator access to repositories.
- Are **listed in the "People" tab** but are **not enterprise members** and have **no access** to enterprise-level settings.

---

## ➕ Adding an Enterprise Administrator

1. In the top-right corner of GitHub Enterprise Server, click your profile photo.
2. Click **Enterprise settings**.
3. On the left sidebar, click **People**.
4. Under **People**, click **Administrators**.
5. Click **Add owner**.
6. Enter username, name, or email → select the person.
7. Click **Add**.
  👉 _See: [Adding an enterprise admin](https://docs.github.com/en/enterprise-server@3.16/admin/managing-accounts-and-repositories/managing-users-in-your-enterprise/inviting-people-to-manage-your-enterprise#adding-an-enterprise-administrator-to-your-enterprise-account)
---

## ➖ Removing an Enterprise Administrator

_Only enterprise owners can remove other enterprise admins._

1. Go to **Enterprise settings** via profile photo dropdown.
2. On the left, click **People**.
3. Click **Administrators**.
4. Next to the user, click the **kebab (⋮) menu** > **Convert to member**.
5. Confirm by clicking **Yes, convert USERNAME to member**.
👉 _See: [Removing an enterprise admin](https://docs.github.com/en/enterprise-server@3.16/admin/managing-accounts-and-repositories/managing-users-in-your-enterprise/inviting-people-to-manage-your-enterprise#removing-an-enterprise-administrator-from-your-enterprise-account)

---

🔗 [Source: GitHub Docs - Managing your enterprise account](https://docs.github.com/en/enterprise-server@3.16/admin/managing-your-enterprise-account/creating-a-readme-for-an-enterprise)
