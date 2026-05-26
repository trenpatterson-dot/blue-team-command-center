# Indicators

Use this file to document indicators reviewed during the suspicious PowerShell practice case.

This is a personal lab/practice case. No real company, customer, or restricted data is included.

## Indicator Summary

**Case Title:** Suspicious PowerShell Practice Case  
**Date Reviewed:** 2026-05-25  
**Analyst:** Tren Patterson  
**Operating Mode:** Personal Lab  

## Indicator Table

| Indicator | Type | Source | Context | Status | Notes |
|---|---|---|---|---|---|
| Demo user account | User / Account | Practice EDR / Windows Logs | User associated with PowerShell activity | Unknown | Needs user context |
| Demo Windows host | Hostname | Practice EDR / Windows Logs | Host where PowerShell ran | Unknown | Needs asset context |
| powershell.exe | Process | Practice EDR | PowerShell process involved | Known | Needs full command-line review |
| Demo parent process | Parent Process | Practice EDR | Process that launched PowerShell | Unknown | Needs process tree review |
| Demo command line | Command Line | Practice EDR | PowerShell execution details | Unknown | Needs full command-line review |
| Demo remote URL | URL / Domain | Practice EDR | Possible network destination | Unknown | Needs safe review if applicable |
| Demo downloaded file | File | Practice EDR | Possible file created or downloaded | Unknown | Needs file activity review if applicable |
| Demo endpoint alert | Alert | Practice EDR | Related detection context | Unknown | Needs alert review |

## Known Good / Expected Indicators

- PowerShell may be expected for administration, automation, endpoint management, login scripts, patching, or troubleshooting.
- PowerShell activity should be reviewed in context before being treated as malicious.
- No known-good source has been confirmed yet in this practice case.

## Suspicious Indicators

Potentially suspicious indicators to review:

- Encoded or obfuscated command
- ExecutionPolicy Bypass
- Hidden window behavior
- Download command
- Remote URL
- Suspicious parent process
- Execution from temp or user profile path
- File created or downloaded
- External network connection
- Related EDR or malware alert
- Privileged account involvement

## Unknown Indicators

- Full command line
- Parent process
- User role or expected behavior
- Host purpose
- Network destination
- File activity
- Related alerts
- Whether the activity was approved admin work
- Whether multiple hosts showed similar behavior

## Indicator Questions

- Who ran PowerShell?
- What host ran the command?
- What parent process launched PowerShell?
- Was the command encoded or obfuscated?
- Did the command download anything?
- Did the command connect to a network destination?
- Did the command create, modify, or execute files?
- Was this expected admin activity or automation?
- Was a privileged account involved?
- Were there related endpoint alerts before or after the event?

## Safe Handling Notes

No real usernames, hostnames, emails, IP addresses, URLs, hashes, ticket numbers, or company data are included in this practice case.

For a real company case, command lines, hostnames, usernames, file paths, URLs, and endpoint evidence should stay inside approved company systems unless policy allows documentation elsewhere.

Do not isolate endpoints, kill processes, delete files, block indicators, or reset accounts without approval.

## Recommended Next Steps

| Priority | Recommendation | Reason | Approval Needed? |
|---|---|---|---|
| High | Review full command line | Determines intent and risk | No |
| High | Review parent process | Helps identify suspicious launch chain | No |
| High | Review user and host context | Helps determine expected versus suspicious activity | No |
| Medium | Review network activity | Identifies possible download or command-and-control risk | No |
| Medium | Review file activity | Identifies possible payload or persistence risk | No |
| Medium | Check related alerts | Helps determine scope | No |
| Low | Document indicators in analyst summary | Supports clean reporting | No |

## Closeout Review

Before closing this section, confirm:

- [ ] Command line is documented or marked unavailable.
- [ ] Parent process is reviewed or marked unavailable.
- [ ] User context is reviewed or marked unavailable.
- [ ] Host context is reviewed or marked unavailable.
- [ ] Network activity is reviewed or marked unavailable.
- [ ] File activity is reviewed or marked unavailable.
- [ ] Related alerts are reviewed or marked unavailable.
- [ ] Sensitive indicators are protected.
- [ ] Any isolation, deletion, blocking, reset, or escalation action is marked as requiring approval.