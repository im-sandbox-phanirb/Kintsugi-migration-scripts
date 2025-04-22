# About the Management Console

The Management Console allows you to manage the low-level configuration of your GitHub Enterprise Server instance. For example, you can complete initial setup, manage licensing and low-level settings, configure authentication, schedule maintenance windows, and monitor your instance.

You can always reach the Management Console using your GitHub Enterprise Server instance's IP address, even when the instance is in maintenance mode, or there is a critical application failure or hostname or SSL misconfiguration.

To access the Management Console, you can use the root site administrator password established during the initial setup of your GitHub Enterprise Server instance or log in as a Management Console user. You must also be able to connect to the virtual machine host on port 8443. If you're having trouble reaching the Management Console, please check intermediate firewall and security group configurations.

The Management Console password hash is stored in `/data/user/common/secrets.conf`. 

When someone performs an action in the Management Console via the web interface or REST API, an event appears in the audit log. 

---

## Examples of Activities in the Management Console

In the Management Console, you can perform administrative tasks for your GitHub Enterprise Server instance, including:

- **Initial setup:** Walk through the initial setup process when first launching your GitHub Enterprise Server instance by visiting your instance's IP address in your browser.
- **Identity and access management:** Improve the security of your instance by creating dedicated user accounts for the Management Console.
- **Configuring authentication policies:** Set rate limits for login attempts and the lockout duration if someone exceeds the rate limit. S, hostname, SSL, user authentication, email, monitoring services, and log forwarding on the **Settings** page.
- **Scheduling maintenance windows:** Take your instance offline while performing maintenance using the Management Console or administrative shell.
- **Troubleshooting:** Generate a support bundle or view high-level diagnostic information.
- **License management:** View or update your GitHub Enterprise license.

---

## Types of Management Console Accounts

There are two types of user accounts for the Management Console on a GitHub Enterprise Server instance:

### Root Site Administrator

- Root site administrators have complete control over the Management Console.
- They can take every action in the Management Console, including creating and deleting Management Console user accounts.
- Only the root site administrator can create and delete Management Console user accounts.

### Management Console User

- Management Console users can perform most administrative tasks for your GitHub Enterprise Server instance.
- For heightened security, Management Console users cannot create or delete Management Console user accounts.
- Management Console users can add SSH keys to the Management Console to grant administrative access to the instance via SSH.

---

## Creating or Deleting a User Account for the Management Console

1. Sign into the Management Console as the root site administrator.
2. In the top navigation bar, click **User Management**.
3. Click **Create user**.
4. Fill in the user's name, username, and email address.
5. To finish creating the user account, click **Create**. If email notifications are configured, the user will automatically receive an invitation email with access instructions.
6. To delete a user account, click **...** to the right of the user account you wish to delete, then confirm deletion.

---

## Inviting New Management Console Users

If email notifications are configured, new users will automatically receive an invitation to complete account creation. If email notifications are not configured, you must manually send the invitation link.

1. Sign into the Management Console as the root site administrator.
2. In the top navigation bar, click **User Management**.
3. To copy the invitation link, click **...** next to the user account.
4. Send the invitation link to the user. The link will guide the user through the final account setup steps.

---

## Configuring Rate Limits for Authentication to the Management Console

1. From an administrative account on GitHub Enterprise Server, in the upper-right corner of any page, click **.**.
2. If you're not already on the "Site admin" page, in the upper-left corner, click **Site admin**.
3. In the **Site admin** sidebar, click **Management Console**.
4. Under **Lockout time for Management Console users**, type the number of minutes to lock the console after too many failed login attempts.
5. Under **Login attempt limit for all users**, type the maximum number of failed login attempts allowed before the console is locked.
6. Under the **Settings** sidebar, click **Save settings**.

> **Note:** Saving settings in the Management Console restarts system services, which could result in user-visible downtime.

---

## Accessing the Management Console

1. Visit your GitHub Enterprise Server instance's hostname or IP address in your browser:  
   ```http(s)://HOSTNAME/setup```
2. If you have created multiple Management Console user accounts, select **Root site admin** or **Management Console user**.
3. Type your Management Console credentials, then click **Continue**.

---

## Accessing the Management Console as an Unauthenticated User

1. Visit this URL in your browser, replacing `HOSTNAME` with your GitHub Enterprise Server hostname or IP address:  
   ```http(s)://HOSTNAME/setup```
2. If you have created multiple Management Console user accounts, select **Root site admin** or **Management Console user**.
3. Type your Management Console credentials, then click **Continue**.