# IAM-009 — Account Creation + Privilege Escalation Correlation

## Objective
Correlate Windows account creation, privileged group membership changes, and account deletion activity in Wazuh.

## Scenario
A controlled local test account was created, added to the local Administrators group, removed from the group, and deleted. Wazuh was used to confirm the related Windows Security events and build an account lifecycle timeline.

## Key Events
- Event ID 4720 — User account created
- Event ID 4732 — Member added to a security-enabled local group
- Event ID 4733 — Member removed from a security-enabled local group
- Event ID 4726 — User account deleted

## Status
Completed.
