# IAM-008 — Privileged Group Membership Change Detection

## Objective
Use Wazuh to detect and document privileged local group membership changes on a Windows endpoint.

## Scenario
A Windows endpoint is sending Security events to Wazuh. The analyst creates a controlled test account, adds it to a privileged local group, searches for group membership change events, reviews the event details, and documents the risk.

## Tools Used
- Wazuh
- Windows Security Event Logs
- Windows PowerShell
- Wazuh Agent
- Local Windows groups
- SIEM filtering/search

## Key Events
- Event ID 4732 — A member was added to a security-enabled local group
- Event ID 4733 — A member was removed from a security-enabled local group
- Privileged group reviewed: Administrators

## Status
In progress.
