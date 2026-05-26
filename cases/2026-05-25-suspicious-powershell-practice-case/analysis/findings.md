# Findings

Use this file to document the main finding from the suspicious PowerShell practice case.

This is a personal lab/practice case. No real company, customer, or restricted data is included.

## Finding Summary

**Case Title:** Suspicious PowerShell Practice Case
**Date Reviewed:** 2026-05-25
**Analyst:** Tren Patterson
**Operating Mode:** Personal Lab
**Finding Status:** Draft

## Finding Title

Suspicious PowerShell Activity Requires Command-Line and Process Context Review

## Finding Type

- [ ] Authentication activity
- [ ] Phishing
- [ ] Malware
- [x] Endpoint alert
- [ ] Network activity
- [x] Suspicious command execution
- [ ] Account compromise
- [ ] Vulnerability
- [ ] Policy violation
- [ ] Detection gap
- [ ] Process gap
- [ ] Other

## Severity

- [ ] Low
- [x] Medium
- [ ] High
- [ ] Critical

## Known Facts

- Suspicious PowerShell activity was selected for review.
- The case involves command-line or endpoint activity.
- The case is being handled as a personal lab/practice case.
- No real company or customer data is included.
- Full command-line details have not been confirmed.
- Parent process details have not been confirmed.
- No endpoint isolation, process termination, file deletion, blocking, password reset, or escalation action has been taken.

## Evidence Supporting the Finding

| Evidence | Source / Location | What It Shows |
|---|---|---|
| Case summary | `../CASE.md` | Suspicious PowerShell activity is the focus of the investigation. |
| Timeline notes | `timeline.md` | Timeline gaps still need to be filled in. |
| Indicator notes | `indicators.md` | Command line, parent process, user, host, network, and file activity still need review. |
| Checklist | `checklists/suspicious-powershell-triage-checklist.md` | Triage steps required before disposition. |

## Analyst Interpretation

- PowerShell activity can be expected or suspicious depending on context.
- Expected causes may include administration, automation, endpoint management, patching, or troubleshooting.
- Suspicious causes may include script-based malware, payload download, credential theft, reconnaissance, lateral movement, persistence, or defense evasion.
- Full command line, parent process, user context, host context, network activity, file activity, and related alerts are key decision points.
- The finding should remain medium severity until additional evidence supports lowering or raising the risk.

## Assumptions

- The PowerShell details are demo placeholders.
- The user, host, command line, process, network, and file details are not real.
- The scenario is being used to practice SOC documentation and endpoint triage workflow.
- No confirmed malicious activity has occurred based on the current evidence.

## Missing Information

- Full PowerShell command line
- Parent process
- Child process
- User context
- Host context
- PowerShell version
- Network connections
- File creation, modification, or download activity
- Related endpoint alerts
- Whether the activity was expected administration or automation

## Impact

The potential impact depends on what the PowerShell command did and whether it was authorized.

Possible impact includes:

- Unauthorized script execution
- Payload download
- Credential access
- Reconnaissance
- Lateral movement
- Persistence
- Command-and-control activity
- Endpoint compromise

At this stage, impact is limited because malicious behavior has not been confirmed.

## Likelihood

- [ ] Low
- [x] Medium
- [ ] High

Explain why:

> PowerShell activity is suspicious enough to review because it can be used for administration or malicious activity. The current practice evidence does not confirm malicious execution, so likelihood remains medium pending command-line, process, user, host, network, and file review.

## Risk Rating

- [ ] Low
- [x] Medium
- [ ] High
- [ ] Critical

Explain why:

> The risk is medium because suspicious PowerShell activity can indicate script-based malware, payload download, or unauthorized command execution, but the current practice evidence does not confirm malicious activity.

## Recommended Action

| Priority | Recommendation | Reason | Approval Needed? |
|---|---|---|---|
| High | Complete suspicious PowerShell triage checklist | Ensures command line, parent process, user, host, and related activity are reviewed | No |
| High | Review full command line | Determines likely intent and risk | No |
| High | Review parent process | Helps identify suspicious launch chain | No |
| Medium | Review network activity | Helps identify payload download or command-and-control risk | No |
| Medium | Review file activity | Helps identify payload or persistence behavior | No |
| Medium | Check related endpoint alerts | Helps determine scope | No |
| Low | Document lessons learned after closeout | Improves future PowerShell workflow | No |

## Human Approval Required

Mark any action that requires approval.

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

## Detection / Control Notes

Use this section if the finding shows a detection, logging, or process gap.

- Existing detection: Practice EDR / Windows log alert
- Gap identified: Full command line, parent process, user context, host context, network activity, and file activity are not yet documented
- Recommended improvement: Capture command line, process tree, user context, host context, network connections, file activity, and related alerts
- Owner: Analyst / practice workflow
- Follow-up needed: Complete analyst summary and lessons learned

## Framework Mapping

Optional mapping if supported by evidence.

**MITRE ATT&CK:** PowerShell, Command and Scripting Interpreter, if evidence supports suspicious script execution
**NIST CSF:** Detect, Respond
**NIST SP 800-61:** Detection and Analysis
**CIS Controls:** Audit Log Management, Malware Defenses, Security Awareness and Skills Training
**Other:** Endpoint detection and response monitoring

## Final Finding Statement

> Based on the available practice evidence, suspicious PowerShell activity was reviewed and documented. Malicious execution has not been confirmed. Additional context is needed, including full command line, parent process, user context, host context, network activity, file activity, and related endpoint alerts.

## Closeout Review

Before closing this finding, confirm:

- [ ] Facts are separated from assumptions.
- [ ] Evidence supports the finding.
- [ ] Severity is reasonable.
- [ ] Impact is explained.
- [ ] Risk is not overstated.
- [ ] Recommended actions are safe and actionable.
- [ ] Approval-required actions are marked.
- [ ] Sensitive information is protected.
