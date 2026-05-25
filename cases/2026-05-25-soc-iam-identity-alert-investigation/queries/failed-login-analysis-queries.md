# Failed Login Analysis Queries

## Purpose

These are platform-neutral investigation questions and query examples for failed-login/authentication analysis.

## Core Investigation Questions

1. How many failed logins occurred?
2. Which account was targeted?
3. Was the account privileged?
4. Did a successful login happen after the failures?
5. Did the source target one account or many accounts?
6. Was MFA involved?
7. Was the activity expected, suspicious, or confirmed malicious?

## Windows Event IDs

| Event ID | Meaning |
|---|---|
| 4625 | Failed logon |
| 4624 | Successful logon |
| 4740 | Account locked out |
| 4720 | User account created |
| 4726 | User account deleted |
| 4728 | User added to privileged global group |
| 4732 | User added to privileged local group |
| 4723 | Password change attempt |
| 4724 | Password reset attempt |

## Example Windows Event Viewer Filters

Failed logins:

```text
Event ID: 4625
Log: Windows Logs > Security