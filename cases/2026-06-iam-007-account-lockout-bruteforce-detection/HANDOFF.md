# SUPERVISOR-AGENT HANDOFF

## Project
IAM-007 — Account Lockout and Brute Force Pattern Detection

## Location
C:\Users\trenp\blue-team-command-center\cases\2026-06-iam-007-account-lockout-bruteforce-detection

## Status
In progress

## Objective
Create a SOC/IAM case showing repeated failed Windows logon activity in Wazuh and explaining how analysts can identify brute force or password guessing patterns.

## Evidence Needed
- Wazuh agent active before test
- Failed logon attempts generated
- Failed logon events visible in Wazuh
- Event ID 4625 filter results
- Repeated failed logon pattern visible
- Failed logon event detail
- Target username field visible
- Final investigation view

## Screenshot Names
- 01-wazuh-agent-active-before-test
- 02-failed-logon-test-generated
- 03-failed-logon-events-visible
- 04-eventid-4625-filter-results
- 05-repeated-failed-logons-pattern
- 06-failed-logon-event-detail-4625
- 07-source-user-target-user-fields
- 08-final-bruteforce-investigation-view

## Recruiter Story
I generated repeated failed Windows logon attempts, searched for Event ID 4625 in Wazuh, confirmed the failed username and event details, and documented how repeated failures can indicate password guessing or brute-force behavior.
