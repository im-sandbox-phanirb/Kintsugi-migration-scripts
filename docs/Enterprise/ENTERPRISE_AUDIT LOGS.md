# About Audit Logs

The audit log lists events triggered by activities that affect your enterprise. Audit logs for GitHub are retained indefinitely, unless an enterprise owner configured a different retention period.

By default, only events from the past three months are displayed. To view older events, you must specify a date range with the `created` parameter. 

The name for each audit log entry is composed of a category of events, followed by an operation type. For example, the `repo.create` entry refers to the `create` operation on the `repo` category.

Each audit log entry shows applicable information about an event, such as:

- The enterprise or organization an action was performed in
- The user (actor) who performed the action
- The user affected by the action
- Which repository an action was performed in
- The action that was performed
- Which country the action took place in
- The date and time the action occurred
- The SAML SSO and SCIM identity of the user (actor) who performed the action
- For actions outside of the web UI, how the user (actor) authenticated

## Accessing the Instance-Level Audit Log

Site administrators can review the audit log for an instance, which contains a wider range of events including system administrative events. To access the instance-level audit log:

1. From an administrative account on GitHub Enterprise Server, in the upper-right corner of any page, click **.**  
2. If you're not already on the "Site admin" page, in the upper-left corner, click **Site admin**.  
3. In the left menu, click **Audit log**.


---


## Accessing the Audit Log for Your Enterprise

You can view aggregated actions from all of the organizations owned by an enterprise account in the enterprise's audit log.

### Who Can Use This Feature?

Enterprise owners and site administrators can access the audit log.

The audit log lists events triggered by activities that affect your enterprise. Audit logs for GitHub are retained indefinitely, unless an enterprise owner configured a different retention period. See [Configuring the audit log for your enterprise](https://docs.github.com/en/enterprise-server/admin/monitoring-activity-in-your-enterprise/configuring-the-audit-log-for-your-enterprise).

By default, only events from the past three months are displayed. To view older events, you must specify a date range with the `created` parameter. See [Understanding the search syntax](https://docs.github.com/en/enterprise-server/admin/monitoring-activity-in-your-enterprise/reviewing-audit-logs-for-your-enterprise/searching-the-audit-log-for-your-enterprise#search-query-syntax).

### Steps to Access the Audit Log

1. In the top-right corner of GitHub Enterprise Server, click your profile photo, then click **Enterprise settings**.
2. On the left side of the page, in the enterprise account sidebar, click **Settings**.
3. Under **Settings**, click **Audit log**.

---

## About Search for the Enterprise Audit Log

You can search your enterprise audit log directly from the user interface by using the **Filters** dropdown, or by typing a search query.

- You cannot search for entries using text.  
- You can construct search queries using a variety of filters.  
- Many operators used when querying the log, such as `-`, `>`, or `<`, match the same format as searching across GitHub.

### Useful Links for Searching the Audit Log

- [Search query filters](https://docs.github.com/en/enterprise-server@3.16/admin/monitoring-activity-in-your-enterprise/reviewing-audit-logs-for-your-enterprise/searching-the-audit-log-for-your-enterprise#search-query-filters)
- [Search query syntax](https://docs.github.com/en/enterprise-server@3.16/admin/monitoring-activity-in-your-enterprise/reviewing-audit-logs-for-your-enterprise/searching-the-audit-log-for-your-enterprise#search-query-syntax)
- [Search based on action performed](https://docs.github.com/en/enterprise-server@3.16/admin/monitoring-activity-in-your-enterprise/reviewing-audit-logs-for-your-enterprise/searching-the-audit-log-for-your-enterprise#search-based-on-the-action-performed)