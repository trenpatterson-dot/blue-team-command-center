# Findings — IAM-009

## Finding 1: Account creation was detected in Wazuh

### Summary
A controlled local user account was created and detected in Wazuh as Event ID 4720.

### Evidence
- 02-test-account-created
- 03-eventid-4720-account-created-visible
- 04-eventid-4720-account-created-detail

### Impact
New account creation can be normal administration, but unexpected account creation may indicate persistence, account misuse, or unauthorized IAM activity.

---

## Finding 2: Privileged group membership change was detected

### Summary
The test account was added to the local Administrators group and Wazuh detected the change as Event ID 4732.

### Evidence
- 05-test-account-added-to-administrators
- 06-eventid-4732-admin-add-visible
- 07-eventid-4732-admin-add-detail

### Impact
Adding an account to Administrators grants elevated access. When paired with a newly created account, this can indicate possible privilege escalation.

---

## Finding 3: Account removal and deletion completed the lifecycle

### Summary
The test account was removed from Administrators and deleted. Wazuh showed the related removal and deletion events.

### Evidence
- 08-test-account-removed-from-administrators
- 09-eventid-4733-admin-removal-detail
- 10-test-account-deleted
- 11-eventid-4726-account-deleted-visible
- 12-eventid-4726-account-deleted-detail
- 13-final-account-lifecycle-correlation-view

### Impact
Correlating creation, privilege change, and deletion events gives analysts a fuller IAM story than reviewing one event by itself.

### Recommendation
Monitor account creation events together with privileged group changes and deletion events. Review whether the activity was authorized, temporary, and properly documented.
