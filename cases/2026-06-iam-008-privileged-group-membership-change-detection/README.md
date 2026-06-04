# IAM-008 — Privileged Group Membership Change Detection

## Overview

This case documents a SOC/IAM workflow for detecting privileged local group membership changes in Wazuh. The goal was to create a controlled test account, add it to the local Administrators group, confirm the event in Wazuh, remove the account from the group, and document the cleanup.

## Objective

- Confirm the Wazuh agent was active before testing
- Capture baseline local Administrators group membership
- Create a controlled local test user
- Add the test user to the local Administrators group
- Detect Event ID 4732 in Wazuh
- Remove the test user from the Administrators group
- Detect Event ID 4733 in Wazuh
- Delete the test user after the lab

## Tools Used

- Wazuh
- Windows Security Event Logs
- Windows PowerShell
- Wazuh Agent
- Local Windows groups
- SIEM filtering/search

## Findings

### Finding 1: Administrator group addition was detected

A controlled test user was added to the local Administrators group. Wazuh detected the change and showed an Administrators Group Changed event. The event details confirmed Event ID 4732.

### Finding 2: Administrator group removal was detected

The test user was removed from the local Administrators group. Wazuh detected the removal event and the event details confirmed Event ID 4733.

### Finding 3: Test account cleanup was completed

The test user was deleted after the lab to avoid leaving unnecessary local accounts on the endpoint.

## Security Value

Privileged group changes are high-value IAM events. Adding a user to the local Administrators group can grant elevated access on an endpoint. If unauthorized, this may indicate privilege escalation, account takeover, insider misuse, or risky administration.

Monitoring Event IDs 4732 and 4733 in Wazuh helps analysts identify who was added or removed from privileged groups, when the change happened, and whether the change should be investigated.

## Analyst Takeaway

This case shows how a SOC analyst can monitor privileged access changes through Windows Security events in Wazuh. Failed logons show access attempts, but administrator group changes show privilege movement. That makes this a higher-risk IAM signal.
