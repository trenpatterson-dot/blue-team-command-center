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

