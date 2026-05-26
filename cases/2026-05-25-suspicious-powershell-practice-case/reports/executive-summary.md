# Executive Summary

This report provides a manager-friendly summary of the suspicious PowerShell practice case.

This is a personal lab/practice case. No real company, customer, or restricted data is included.

## Report Details

**Case Title:** Suspicious PowerShell Practice Case  
**Date Prepared:** 2026-05-25  
**Prepared By:** Tren Patterson  
**Status:** Draft  
**Severity:** Medium  
**Operating Mode:** Personal Lab  

## Plain-English Summary

A practice endpoint security case was reviewed for suspicious PowerShell activity. The case was documented using a SOC-style workflow to show what is known, what is still missing, and what should be reviewed next.

At this stage, there is not enough evidence to confirm malicious activity. The case remains a medium-risk practice scenario until more details are added, such as the full command line, parent process, user context, host context, network activity, file activity, and related endpoint alerts.

## Business Impact

Because this is a practice case, there is no real business impact.

In a real environment, suspicious PowerShell activity could matter because it may indicate:

- Unauthorized script execution
- Malware activity
- Payload download
- Credential access
- Reconnaissance
- Lateral movement
- Persistence
- Command-and-control activity
- Endpoint compromise

## Current Risk Level

- [ ] Low
- [x] Medium
- [ ] High
- [ ] Critical

Explain why:

> The activity is rated medium because PowerShell can be used for both legitimate administration and malicious activity. Malicious execution has not been confirmed, so more evidence is needed before increasing or lowering the risk.

## What We Know

- Suspicious PowerShell activity was selected for review.
- The case involves command-line or endpoint activity.
- The user, host, command line, network, and file details are demo placeholders.
- No real company or customer data is included.
- Malicious activity has not been confirmed.
- No response action has been taken.

## What We Do Not Know Yet

- Full command line
- Parent process
- Child process
- User context
- Host context
- Network connections
- File creation, modification, or download activity
- Related endpoint alerts
- Whether the activity was expected administration or automation

## Recommended Next Steps

| Priority | Recommendation | Reason | Approval Needed? |
|---|---|---|---|
| High | Complete suspicious PowerShell triage checklist | Ensures all major endpoint triage points are reviewed | No |
| High | Review full command line | Determines likely intent and risk | No |
| High | Review parent process | Helps identify suspicious launch chain | No |
| Medium | Review network activity | Helps identify payload download or command-and-control risk | No |
| Medium | Review file activity | Helps identify payload or persistence behavior | No |
| Medium | Check related endpoint alerts | Helps determine scope | No |
| Low | Complete lessons learned | Improves future PowerShell triage workflow | No |

## Approval Required

No operational response action is currently recommended from this practice case.

The following actions would require approval in a real environment:

- [ ] Isolate endpoint
- [ ] Kill process
- [ ] Delete/quarantine file
- [ ] Block IP/domain
- [ ] Disable account
- [ ] Reset password
- [ ] Contact user/customer
- [ ] Escalate to leadership
- [ ] Close incident
- [ ] Publish report
- [ ] Send external message

## Final Executive Statement

Based on the available practice evidence, suspicious PowerShell activity was reviewed and documented. The current risk is medium because PowerShell can be used for both legitimate administration and malicious execution. Additional evidence would be needed before escalation or closure.

## Sanitization Reminder

This report contains only demo information. Before using this format for public, portfolio, or company-safe sharing, remove or generalize any real usernames, emails, hostnames, IP addresses, ticket IDs, customer information, internal screenshots, tool-specific internal details, command lines, file paths, URLs, or private notes.
