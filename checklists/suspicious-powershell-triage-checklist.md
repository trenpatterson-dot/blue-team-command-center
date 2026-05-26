# Suspicious PowerShell Triage Checklist

Use this checklist when reviewing suspicious PowerShell activity, script execution, encoded commands, download activity, or endpoint alerts involving PowerShell.

## Related Playbook

playbooks/suspicious-powershell.md

## 1. Case Basics

- [ ] Case or ticket created
- [ ] Alert name documented
- [ ] Alert source documented
- [ ] Analyst documented
- [ ] Date and time documented
- [ ] Timezone documented
- [ ] Severity documented
- [ ] Related playbook linked

## 2. Required Evidence

- [ ] Username
- [ ] Hostname
- [ ] Timestamp
- [ ] Parent process
- [ ] Child process
- [ ] Full command line
- [ ] Script path
- [ ] PowerShell version
- [ ] Network connection details
- [ ] File created or downloaded
- [ ] Related endpoint alerts
- [ ] Related authentication activity

## 3. Command Line Review

Check for:

- [ ] EncodedCommand
- [ ] ExecutionPolicy Bypass
- [ ] NoProfile
- [ ] WindowStyle Hidden
- [ ] IEX
- [ ] Invoke-Expression
- [ ] Invoke-WebRequest
- [ ] DownloadString
- [ ] New-Object Net.WebClient
- [ ] Base64-looking content
- [ ] Remote URL
- [ ] Suspicious file path
- [ ] Obfuscation
- [ ] Credential access behavior

## 4. Triage Questions

- Who ran PowerShell?
- What host ran the command?
- What parent process launched it?
- Was this user expected to run PowerShell?
- Was the command interactive or automated?
- Was the command encoded or obfuscated?
- Did it download anything?
- Did it make a network connection?
- Did it create, modify, or execute files?
- Did it run from a suspicious path?
- Was this tied to admin activity, software deployment, or security tooling?
- Are there related alerts before or after this event?

## 5. Benign Possibilities

Suspicious-looking PowerShell may be caused by:

- Admin troubleshooting
- Software deployment
- Endpoint management tooling
- Login scripts
- Security tool activity
- Patch management
- Monitoring scripts
- Automation tasks
- Help desk support activity

## 6. Suspicious Possibilities

PowerShell activity may indicate:

- Script-based malware
- Credential theft
- Reconnaissance
- Defense evasion
- Payload download
- Lateral movement
- Persistence setup
- Command-and-control activity
- Unauthorized admin activity

## 7. Escalation Criteria

Escalate if evidence shows:

- [ ] Encoded or heavily obfuscated command
- [ ] PowerShell launched by Office, browser, archive tool, or unusual parent process
- [ ] Remote payload download
- [ ] Suspicious external network connection
- [ ] Credential access behavior
- [ ] Execution from temp, user profile, or unusual path
- [ ] Multiple hosts showing similar PowerShell activity
- [ ] Privileged account involved
- [ ] Related malware or EDR alert
- [ ] User or admin team denies activity

## 8. Recommended Next Steps

| Priority | Action | Reason | Approval Needed? |
|---|---|---|---|
| High | Review full command line | Determines intent and risk | No |
| High | Review parent process | Helps identify suspicious launch chain | No |
| High | Check user and host context | Helps determine expected vs suspicious activity | No |
| Medium | Review network connections | Identifies download or command-and-control risk | No |
| Medium | Review created or modified files | Identifies payload or persistence risk | No |
| Medium | Check related alerts | Helps determine scope | No |
| Low | Document lessons learned | Improves future triage quality | No |

## 9. Human Approval Required

Approval is required before:

- [ ] Isolating endpoint
- [ ] Killing process
- [ ] Deleting or quarantining files
- [ ] Blocking IP/domain
- [ ] Disabling account
- [ ] Resetting password
- [ ] Contacting user/customer
- [ ] Escalating to leadership
- [ ] Closing incident
- [ ] Publishing report
- [ ] Sending external message

## 10. Analyst Decision

Choose one:

- [ ] Likely benign admin activity
- [ ] Expected automation/tooling
- [ ] Needs more evidence
- [ ] Suspicious, monitor
- [ ] Escalate for investigation
- [ ] Confirmed malicious activity

## 11. Final Notes

Write a short decision statement.

Example:

> Suspicious PowerShell activity was reviewed. Malicious execution was not confirmed from the available evidence. Additional review is needed to confirm command line, parent process, user context, host context, network activity, and related endpoint alerts.

## 12. Closeout Review

Before closing:

- [ ] Command line reviewed
- [ ] Parent process reviewed
- [ ] User context reviewed
- [ ] Host context reviewed
- [ ] Network activity reviewed or marked unavailable
- [ ] File activity reviewed or marked unavailable
- [ ] Related alerts reviewed or marked unavailable
- [ ] Facts separated from assumptions
- [ ] Approval-required actions marked
- [ ] Sensitive evidence protected