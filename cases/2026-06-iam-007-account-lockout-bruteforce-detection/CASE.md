# IAM-007 — Account Lockout and Brute Force Pattern Detection

## Objective
Use Wazuh to identify repeated failed Windows logon activity and document how the pattern could indicate password guessing, brute force behavior, or account misuse.

## Scenario
A Windows endpoint is sending Security events to Wazuh. The analyst generates repeated failed logon attempts, searches for Event ID 4625, reviews the event details, and documents the pattern.

## Tools Used
- Wazuh
- Windows Security Event Logs
- Windows PowerShell
- Wazuh Agent
- SIEM filtering/search

## Key Events
- Event ID 4625 — Failed logon
- Repeated failed logon attempts
- Target username review
- Event pattern review

## Status
In progress.
