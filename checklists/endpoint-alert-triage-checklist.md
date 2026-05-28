# Endpoint Alert Triage Checklist

Use this checklist when reviewing endpoint alerts from EDR, antivirus, SIEM, endpoint logs, suspicious process detections, unusual file activity, persistence indicators, or host-based security alerts.

The goal is to determine whether the alert is benign, suspicious, confirmed malicious, or needs escalation while keeping the workflow analyst-led and review-only.

## Related Playbook

playbooks/endpoint-alert-triage.md

## 1. Case Basics

- [ ] Case or ticket created
- [ ] Alert name documented
- [ ] Alert source documented
- [ ] Analyst documented
- [ ] Date and time documented
- [ ] Timezone documented
- [ ] Severity documented
- [ ] Affected host documented, if allowed
- [ ] Affected user documented, if allowed
- [ ] Related playbook linked

## 2. Required Evidence

- [ ] Alert name
- [ ] Alert source
- [ ] Detection time
- [ ] Affected host
- [ ] Affected user, if allowed
- [ ] Endpoint operating system, if available
- [ ] Detection rule, signature, or analytic name
- [ ] Process name
- [ ] Parent process
- [ ] Command line, if available
- [ ] File name, path, and hash, if available
- [ ] Persistence indicator, if applicable
- [ ] Network activity, if available
- [ ] Endpoint protection action reported
- [ ] Related alerts before or after the detection

## 3. Alert / Detection Review

Check for:

- [ ] Detection category reviewed
- [ ] Detection confidence reviewed
- [ ] Alert severity reviewed
- [ ] Detection source reviewed
- [ ] Rule, signature, or analytic name documented
- [ ] Alert timestamp compared with endpoint activity
- [ ] Endpoint protection action documented
- [ ] Alert scope reviewed
- [ ] False-positive history checked, if available
- [ ] Similar alerts across other hosts checked, if available

## 4. Endpoint / Host Context

- [ ] Hostname or approved host reference reviewed
- [ ] Operating system reviewed, if available
- [ ] Host role reviewed
- [ ] Business function reviewed, if available
- [ ] Device ownership or support group reviewed, if available
- [ ] Endpoint protection status reviewed
- [ ] Recent patching or maintenance checked, if available
- [ ] Recent software installs checked, if available
- [ ] Shared, kiosk, server, workstation, or high-value host context checked
- [ ] Host isolation not performed without approval

## 5. Process Activity Review

Review endpoint process context from approved logs, alerts, and tooling.

- [ ] Process name reviewed
- [ ] Parent process reviewed
- [ ] Child processes reviewed
- [ ] Command line reviewed, if available
- [ ] Execution path reviewed
- [ ] User context reviewed
- [ ] Privilege level reviewed, if available
- [ ] Process start time reviewed
- [ ] Unusual parent-child relationship checked
- [ ] Process termination not performed without approval

## 6. File / Persistence Review

Review file and persistence context without executing files.

- [ ] File name reviewed
- [ ] File path reviewed
- [ ] File extension reviewed
- [ ] File hash documented, if available
- [ ] File signer or publisher reviewed, if available
- [ ] File creation and modification times reviewed, if available
- [ ] Startup folder, scheduled task, service, registry, launch agent, or persistence indicator reviewed, if applicable
- [ ] Known-good software context checked
- [ ] File not executed by analyst
- [ ] Malware execution instructions not included
- [ ] File deletion or quarantine not performed without approval

## 7. User / Account Context

- [ ] User or account reference reviewed, if allowed
- [ ] User role reviewed, if available
- [ ] Privileged or sensitive account status checked
- [ ] Recent login or session context reviewed, if available
- [ ] Admin, help desk, software deployment, or security tooling activity checked
- [ ] Related authentication activity reviewed, if available
- [ ] Similar activity for the same user reviewed
- [ ] Account disablement not performed without approval
- [ ] Password reset not performed without approval

## 8. Network Activity Review

Review network indicators from approved evidence sources.

- [ ] Destination IPs reviewed
- [ ] Domains reviewed
- [ ] URLs reviewed, if available
- [ ] Ports and protocols reviewed
- [ ] Connection timestamps reviewed
- [ ] Internal vs external destinations identified
- [ ] Repeated or beacon-like activity checked
- [ ] Known business service context checked
- [ ] Related proxy, DNS, firewall, EDR, or SIEM telemetry reviewed, if available
- [ ] Indicators not blocked without approval

## 9. Related Alerts Review

- [ ] Related endpoint alerts reviewed
- [ ] Related malware alerts reviewed
- [ ] Related identity or authentication alerts reviewed
- [ ] Related email or phishing alerts reviewed, if applicable
- [ ] Related network, proxy, DNS, or firewall alerts reviewed, if available
- [ ] Alerts before the endpoint detection reviewed
- [ ] Alerts after the endpoint detection reviewed
- [ ] Similar alerts on other hosts reviewed, if available
- [ ] Scope notes documented

## 10. Benign Possibilities

Endpoint alerts may be caused by:

- Admin troubleshooting
- Help desk support activity
- Software installation or update
- Patch management activity
- Endpoint management tooling
- Security tool testing
- Monitoring or backup software
- Business application behavior
- User-approved remote support
- False-positive detection logic

## 11. Suspicious Possibilities

Endpoint alerts may indicate:

- Malware execution
- Suspicious process launch chain
- Credential theft behavior
- Persistence setup
- Defense evasion
- Unauthorized remote access tooling
- Payload download or staging
- Command-and-control activity
- Lateral movement
- Data collection or exfiltration preparation

## 12. Escalation Criteria

Escalate if evidence shows:

- [ ] Confirmed malicious or high-confidence endpoint detection
- [ ] Suspicious parent or child process chain
- [ ] Credential access behavior
- [ ] Persistence behavior
- [ ] Defense evasion or security tool tampering
- [ ] Command-and-control or beacon-like network activity
- [ ] Lateral movement indicators
- [ ] Privileged account involved
- [ ] Sensitive or high-value host involved
- [ ] Multiple hosts show similar alerts
- [ ] User, admin team, or owner denies expected activity
- [ ] Endpoint protection failed, was disabled, or did not complete action

## 13. Recommended Next Steps

| Priority | Action | Reason | Approval Needed? |
|---|---|---|---|
| High | Review alert details and detection context | Establishes what triggered the alert | No |
| High | Review host and user context | Helps separate expected activity from suspicious activity | No |
| High | Review process activity | Helps identify execution chain and behavior | No |
| Medium | Review file and persistence context | Helps identify payload, startup, or persistence risk | No |
| Medium | Review network activity | Helps identify command-and-control or download behavior | No |
| Medium | Review related alerts | Helps determine scope and sequence | No |
| Low | Document findings and assumptions | Improves review quality and handoff | No |

## 14. Human Approval Required

Approval is required before:

- [ ] Isolating hosts
- [ ] Killing processes
- [ ] Deleting files
- [ ] Quarantining files
- [ ] Blocking IPs, domains, URLs, hashes, or other indicators
- [ ] Collecting sensitive evidence
- [ ] Disabling accounts
- [ ] Resetting passwords
- [ ] Contacting users
- [ ] Escalating to another team
- [ ] Escalating to leadership
- [ ] Closing incidents
- [ ] Publishing reports
- [ ] Sending external messages

## 15. Analyst Decision

Choose one:

- [ ] Likely benign endpoint activity
- [ ] Expected admin, support, deployment, or security tooling activity
- [ ] Needs more evidence
- [ ] Suspicious, monitor
- [ ] Escalate for investigation
- [ ] Confirmed malicious activity

## 16. Final Notes

Write a short decision statement.

Example:

> Endpoint alert was reviewed. Malicious activity was not confirmed from the available evidence. Additional review is needed to confirm alert details, host context, process activity, file activity, user context, network activity, and related alerts.

## 17. Closeout Review

Before closing:

- [ ] Alert details reviewed
- [ ] Endpoint and host context reviewed or marked unavailable
- [ ] Process activity reviewed or marked unavailable
- [ ] File and persistence context reviewed or marked unavailable
- [ ] User and account context reviewed or marked unavailable
- [ ] Network activity reviewed or marked unavailable
- [ ] Related alerts reviewed or marked unavailable
- [ ] Benign explanations considered
- [ ] Suspicious indicators documented
- [ ] Facts separated from assumptions
- [ ] Missing information documented
- [ ] Approval-required actions marked
- [ ] No containment action taken without approval
- [ ] No endpoint isolation performed without approval
- [ ] No process termination performed without approval
- [ ] No file deletion or quarantine performed without approval
- [ ] No account action taken without approval
- [ ] No malware execution instructions included
- [ ] Sensitive evidence protected
