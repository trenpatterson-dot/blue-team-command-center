# Lessons Learned

This report captures what was learned from the suspicious PowerShell practice case.

This is a personal lab/practice case. No real company, customer, or restricted data is included.

## Report Details

**Case Title:** Suspicious PowerShell Practice Case  
**Date Prepared:** 2026-05-25  
**Prepared By:** Tren Patterson  
**Status:** Draft  
**Operating Mode:** Personal Lab  

## Plain-English Summary

This practice case was used to test the Blue Team Command Center workflow for suspicious PowerShell triage. The case helped validate the structure for documenting command-line activity, parent process context, user context, host context, network activity, file activity, related alerts, analyst reporting, executive reporting, and safe next steps.

The main lesson is that PowerShell should not be treated as automatically malicious. Context matters. PowerShell can be used for normal administration, automation, security tooling, or malicious activity.

## What Happened

- A reusable case template was copied into a new suspicious PowerShell practice case.
- The case was documented in Personal Lab Mode.
- A suspicious PowerShell scenario was written using demo-only details.
- Known facts, assumptions, and missing information were separated.
- Timeline, indicators, findings, analyst summary, and executive summary were drafted.
- No real company or customer data was used.
- No operational response action was taken.

## What Went Well

- The reusable case template supported the endpoint triage workflow cleanly.
- The checklist created a clear review path.
- The case separated facts, assumptions, and missing information.
- The analyst summary captured technical triage needs.
- The executive summary explained risk in plain English.
- Human approval requirements were included throughout the case.
- The workflow avoided implying unapproved action.

## What Slowed the Investigation Down

- The case used placeholder evidence instead of real lab endpoint logs.
- Full command-line details were not available.
- Parent process details were not available.
- Network activity was not available.
- File activity was not available.
- Related endpoint alerts were not available.
- User and host context were unknown.

## Evidence Gaps

Evidence that would make the investigation stronger:

- Full PowerShell command line
- Parent process
- Child process
- User context
- Host context
- PowerShell version
- Network connection details
- File creation, modification, or download activity
- Related endpoint alerts
- Sanitized process tree screenshot from a lab environment

## Detection Gaps

Possible detection improvements:

- Alert should show full command line.
- Alert should show parent process.
- Alert should identify encoded or obfuscated commands.
- Alert should flag suspicious download behavior.
- Alert should show network destinations.
- Alert should show file activity.
- Alert should show related alerts on the same host or user.

## Process Gaps

Possible process improvements:

- Add a required command-line review step.
- Add a required parent process review step.
- Add a required user and host context step.
- Add clear escalation criteria for encoded commands and remote downloads.
- Add guidance for reviewing network and file activity.
- Add guidance for documenting when evidence is missing.

## Recommended Improvements

| Priority | Improvement | Reason | Owner / Team | Approval Needed? |
|---|---|---|---|---|
| High | Add full command-line review to every PowerShell case | Determines likely intent and risk | Analyst | No |
| High | Add parent process review | Helps identify suspicious launch chain | Analyst | No |
| Medium | Add network activity review | Helps identify payload download or command-and-control risk | Analyst | No |
| Medium | Add file activity review | Helps identify payload or persistence behavior | Analyst | No |
| Low | Build a completed sample with sanitized lab evidence later | Strengthens portfolio evidence | Analyst | No |

## Playbook Updates Needed

- [ ] Failed login investigation
- [ ] Phishing email triage
- [x] Suspicious PowerShell
- [ ] Malware alert triage
- [ ] Vulnerability finding
- [ ] Account compromise
- [ ] Impossible travel
- [ ] Endpoint alert triage
- [ ] Other

Notes:

- The suspicious PowerShell playbook should require review of full command line, parent process, user context, host context, network activity, file activity, and related alerts.
- The playbook should clearly say that endpoint isolation, process termination, file deletion, blocking, account action, escalation, closure, publishing, or external messaging requires approval.

## Training / Knowledge Notes

Practice next:

- PowerShell command-line review
- Parent and child process analysis
- Encoded command recognition
- Remote download behavior
- Suspicious PowerShell versus admin activity
- Endpoint process tree review
- Writing short executive summaries from endpoint findings

## Human Approval Reminder

Any operational changes still require approval, including:

- Isolating endpoints
- Killing processes
- Deleting or quarantining files
- Blocking IPs or domains
- Disabling accounts
- Resetting passwords
- Contacting users or customers
- Escalating to leadership
- Closing incidents
- Publishing reports
- Sending external messages

## Final Lessons Learned Statement

The suspicious PowerShell practice case confirmed that the Blue Team Command Center workflow can support a clean SOC-style endpoint investigation from intake to reporting. The next improvement is to test the workflow with sanitized lab evidence so the case includes realistic command-line, process, network, file, and alert details without exposing sensitive data.

## Sanitization Reminder

This case uses demo-only information. Before using this format for public, portfolio, or company-safe sharing, remove or generalize any real company names, usernames, emails, hostnames, IP addresses, ticket IDs, customer information, internal screenshots, command lines, file paths, URLs, hashes, tool-specific internal details, or private notes.
