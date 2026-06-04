# Findings — IAM-008

## Finding 1: Privileged group membership change detected in Wazuh

### Summary
A controlled test user was added to the local Administrators group on a Windows endpoint. Wazuh detected the privileged group change and displayed it as an Administrators Group Changed event.

### Evidence
- 04-user-added-to-administrators-group
- 05-group-membership-change-events-visible
- 06-eventid-4732-member-added-detail
- 09-final-privileged-group-change-investigation-view

### Key Details
- Event ID: 4732
- Group reviewed: Administrators
- Agent: Trennie-PC
- Message: A member was added to a security-enabled local group

### Impact
Adding a user to the local Administrators group grants elevated privileges on the endpoint. Unauthorized administrator group changes may indicate privilege escalation, account takeover, insider misuse, or risky IAM administration.

### Recommendation
Monitor privileged group membership changes in Wazuh and review additions involving administrator-level groups.

---

## Finding 2: Privileged group removal event detected in Wazuh

### Summary
The test user was removed from the local Administrators group after the controlled test. Wazuh detected the removal event.

### Evidence
- 07-user-removed-from-administrators-group
- 08-eventid-4733-member-removed-visible
- 09-eventid-4733-member-removed-detail
- 10-test-user-membership-after-removal

### Key Details
- Event ID: 4733
- Group reviewed: Administrators
- Agent: Trennie-PC
- Message: A member was removed from a security-enabled local group

### Impact
Removal events are useful for confirming cleanup, validating change activity, and reviewing whether privileged access was revoked properly.

### Recommendation
Correlate group addition and removal events to confirm whether privileged access was temporary, approved, and properly removed.

---

## Finding 3: Test account cleanup completed

### Summary
The controlled local test account was deleted after the investigation.

### Evidence
- 11-test-user-deleted-cleanup

### Impact
Cleaning up test accounts prevents unnecessary local accounts from remaining on the endpoint and reduces avoidable identity risk.

### Recommendation
Always remove temporary test accounts after IAM/security lab activity is complete.
