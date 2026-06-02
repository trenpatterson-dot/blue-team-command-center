# SUPERVISOR-AGENT HANDOFF

## Project
IAM-006 — Wazuh + Active Directory Integration

## Location
C:\Users\trenp\blue-team-command-center\cases\2026-06-iam-006-wazuh-active-directory-integration

## Status
In progress

## Objective
Create a portfolio-ready SOC/IAM case showing Windows or Active Directory-style identity events being collected and reviewed in Wazuh.

## Evidence Needed
- Wazuh agent connected
- Windows security events visible in Wazuh
- IAM event search/filter query
- Failed logon event visible
- Password reset event visible, if available
- Account modification event visible, if available
- Privileged group/admin-related event visible, if available
- Final filtered Wazuh view or dashboard screenshot

## Screenshot Names
- 01-wazuh-agent-connected
- 02-windows-security-events-in-wazuh
- 03-iam-event-search-query
- 04-failed-logon-event-visible
- 05-password-reset-event-visible
- 06-account-change-event-visible
- 07-privileged-group-event-visible
- 08-iam-dashboard-or-filtered-view

## Deliverables
- CASE.md
- analysis/timeline.md
- analysis/findings.md
- reports/executive-summary.md
- reports/analyst-summary.md
- evidence/screenshots/
- evidence/commands/commands-used.md
- README-ready portfolio summary

## Portfolio Angle
This project should show that Tren can move beyond isolated Windows Event Viewer checks and use a SIEM to monitor identity activity in a SOC-style workflow.

## Recruiter Story
I integrated Windows identity/security events into Wazuh and used SIEM filtering to review IAM activity such as failed logons, password resets, account changes, and privileged access indicators.