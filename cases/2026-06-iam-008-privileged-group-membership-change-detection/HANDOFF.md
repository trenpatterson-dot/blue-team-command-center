# SUPERVISOR-AGENT HANDOFF

## Project
IAM-008 — Privileged Group Membership Change Detection

## Location
C:\Users\trenp\blue-team-command-center\cases\2026-06-iam-008-privileged-group-membership-change-detection

## Status
In progress

## Objective
Create a SOC/IAM case showing privileged local group membership changes in Wazuh and explaining why unauthorized admin group changes are high-risk IAM activity.

## Evidence Needed
- Wazuh dashboard ready
- Wazuh agent active before test
- Local Administrators group reviewed before change
- Test account created
- Test account added to Administrators group
- Event ID 4732 visible in Wazuh
- Event details showing group/member fields
- Test account removed from Administrators group
- Event ID 4733 visible in Wazuh, if available
- Final investigation view

## Screenshot Names
- 00-wazuh-dashboard-ready-before-test
- 01-wazuh-agent-active-before-test
- 02-local-administrators-group-before-change
- 03-test-user-created
- 04-user-added-to-administrators-group
- 05-group-membership-change-events-visible
- 06-eventid-4732-member-added-detail
- 07-user-removed-from-administrators-group
- 08-eventid-4733-member-removed-detail
- 09-final-privileged-group-change-investigation-view

## Recruiter Story
I generated a controlled privileged group membership change on a Windows endpoint, detected the activity in Wazuh, confirmed the event details, and documented why unauthorized administrator group changes can indicate privilege escalation or risky IAM activity.
