# IAM-006 — Wazuh + Active Directory Integration

## Objective
Integrate Windows identity/security events with Wazuh to show centralized IAM monitoring in a SOC-style workflow.

## Scenario
A Windows endpoint or Active Directory-style host is sending security event logs to Wazuh. The analyst reviews IAM-related events such as failed logons, password resets, account changes, and privileged access activity from one SIEM view.

## Tools Used
- Wazuh
- Windows Security Event Logs
- Windows Event Viewer
- Wazuh Agent
- SIEM search/filtering

## Key Events Reviewed
- Failed logon activity
- Password reset activity
- Account modification activity
- Privileged group or admin-related activity

## Analyst Summary
This case shows how IAM activity becomes easier to monitor when Windows security events are centralized in Wazuh. Instead of checking one system manually, the analyst can search, filter, and review identity-related activity from a SIEM workflow.

## Detection Value
Centralized IAM logging helps identify suspicious account activity, unauthorized changes, credential misuse, and privilege-related risks faster.

## Current Status
In progress.
