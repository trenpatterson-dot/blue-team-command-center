## Related Checklist

Use this checklist during suspicious PowerShell triage:

checklists/suspicious-powershell-triage-checklist.md

The checklist helps confirm:

- Full command line
- Parent process
- User and host context
- Network activity
- File activity
- Related endpoint alerts
- Escalation criteria
- Human approval requirements

# Suspicious PowerShell

## Purpose

Investigate suspicious PowerShell activity while preserving evidence and avoiding unapproved changes to endpoints.

## When to Use

- EDR, SIEM, or Windows logging flags unusual PowerShell.
- Encoded commands, download cradles, bypass flags, or suspicious parent processes are observed.
- PowerShell activity appears linked to phishing, malware, persistence, or lateral movement.

## Required Evidence

- Alert details and timestamps.
- Host and user references.
- Command line, script block, or process tree data from approved tools.
- Parent and child process context.
- Network connections and file activity when available.

## Triage Questions

- What launched PowerShell?
- Was the command encoded, obfuscated, or downloaded from a remote source?
- Was the activity run by an expected admin, service, or user context?
- Did it create files, persistence, outbound connections, or credential access behavior?
- Is similar activity present on other hosts?

## Safe Investigation Steps

1. Record the alert and host references.
2. Review process tree and command line details in approved tools.
3. Compare the activity to known administration tasks.
4. Check for related file, network, and authentication events.
5. Document interpretation without executing suspicious commands.
6. Recommend containment or response only for human approval.

## Escalation Criteria

- Encoded or obfuscated command with suspicious behavior.
- PowerShell spawned from Office, browser, archive, or email client process.
- Credential access, persistence, payload download, or lateral movement indicators.
- High-value host or privileged user involved.

## Report Output

Use `templates/ALERT-TRIAGE-REPORT.md` or `templates/INCIDENT-REPORT.md`.

## Lessons Learned

- Was logging detailed enough?
- Should script block logging, constrained language mode, or detection logic be reviewed?
- Were approved admin scripts easy to distinguish?


## Suspicious PowerShell Decision Points

Before closing or escalating a suspicious PowerShell case, confirm:

- [ ] Full command line is reviewed
- [ ] Parent process is reviewed
- [ ] User context is reviewed
- [ ] Host context is reviewed
- [ ] Network activity is reviewed or marked unavailable
- [ ] File activity is reviewed or marked unavailable
- [ ] Related alerts are reviewed or marked unavailable
- [ ] Facts are separated from assumptions
- [ ] Missing information is documented
- [ ] Approval-required actions are clearly marked

## Escalation Reminder

Escalation may be appropriate when:

- PowerShell uses encoded or heavily obfuscated commands
- PowerShell is launched by Office, browser, archive tool, or unusual parent process
- Remote payload download is observed
- Suspicious external network activity is observed
- Credential access behavior is suspected
- Activity runs from temp, user profile, or unusual paths
- Multiple hosts show similar activity
- A privileged account is involved
- Related malware or EDR alerts exist
- The user or admin team denies the activity

Do not isolate endpoints, kill processes, delete files, block IPs, disable accounts, reset passwords, contact users, escalate, close, publish, or send messages without the proper human approval process.