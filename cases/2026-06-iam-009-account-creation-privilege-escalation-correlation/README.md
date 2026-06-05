# IAM-009 — Account Creation + Privilege Escalation Correlation

## Overview

This case documents a SOC/IAM correlation workflow using Wazuh and Windows Security events. The goal was to connect multiple identity events into one investigation story: account creation, privileged group membership change, group removal, and account deletion.

## Objective

- Create a controlled local test account
- Detect Event ID 4720 in Wazuh
- Add the test account to the local Administrators group
- Detect Event ID 4732 in Wazuh
- Remove the account from Administrators
- Detect Event ID 4733 in Wazuh
- Delete the account
- Detect Event ID 4726 in Wazuh
- Build a final account lifecycle correlation view

## Tools Used

- Wazuh
- Windows Security Event Logs
- Windows PowerShell
- Wazuh Agent
- Local Windows users and groups
- SIEM filtering/search

## Key Evidence

| Evidence | Description |
|---|---|
| 02-test-account-created | Controlled test account was created |
| 03-eventid-4720-account-created-visible | Wazuh showed account creation event |
| 04-eventid-4720-account-created-detail | Event details confirmed Event ID 4720 |
| 05-test-account-added-to-administrators | Test account was added to Administrators |
| 06-eventid-4732-admin-add-visible | Wazuh showed admin group addition event |
| 07-eventid-4732-admin-add-detail | Event details confirmed Event ID 4732 |
| 08-test-account-removed-from-administrators | Test account was removed from Administrators |
| 09-eventid-4733-admin-removal-detail | Event details confirmed Event ID 4733 |
| 10-test-account-deleted | Test account was deleted |
| 11-eventid-4726-account-deleted-visible | Wazuh showed account deletion event |
| 12-eventid-4726-account-deleted-detail | Event details confirmed Event ID 4726 |
| 13-final-account-lifecycle-correlation-view | Final correlated investigation view |

## Findings

### Finding 1: Account creation was detected

Wazuh detected the controlled test account creation as Event ID 4720.

### Finding 2: Privileged group membership change was detected

The test account was added to the local Administrators group. Wazuh detected the change as Event ID 4732.

### Finding 3: Account deletion was detected

The test account was deleted after the controlled test. Wazuh detected the deletion as Event ID 4726.

## Security Value

Single IAM events matter, but correlation is stronger. A new account by itself may be normal. A new account added to Administrators is higher risk. If that account is later removed or deleted, the full sequence may indicate temporary privilege use, cleanup activity, or suspicious account lifecycle behavior.

## Analyst Takeaway

This case shows how to connect multiple Windows Security events into a single investigation story. Account creation plus administrator group membership change is a higher-risk pattern than either event alone.
