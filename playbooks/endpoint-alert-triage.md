# Endpoint Alert Triage

## Related Checklist

Use this checklist during endpoint alert triage:

```text
../checklists/endpoint-alert-triage-checklist.md
```

## Purpose

Review endpoint security alerts to determine scope, confidence, business impact, and recommended next steps while preserving evidence and avoiding unapproved containment, endpoint isolation, process termination, file deletion, quarantine, account action, or communication.

## When to Use

- EDR, antivirus, device management, or SIEM flags endpoint activity.
- A host shows suspicious process, file, registry, persistence, or network behavior.
- Endpoint logs show unusual process, file, service, startup, or host-based security activity.
- A suspicious process detection, unusual file activity, persistence indicator, or host-based security alert needs analyst review.
- A user reports unusual device behavior.

## Required Evidence

- Alert details, detection name, severity, and timestamp.
- Detection source and rule, signature, or analytic name.
- Host, user, operating system, and endpoint protection status when available.
- Process name, parent process, child processes, command line, execution path, and user context when available.
- File name, file path, hash, signer, and timestamp details when available.
- Persistence indicators, such as startup items, scheduled tasks, services, registry entries, or similar host artifacts when available.
- Network activity from approved tools when available.
- Endpoint protection action reported by the tool, if any.
- Related endpoint, identity, email, malware, proxy, DNS, firewall, or SIEM alerts when available.

## Initial Triage Steps

1. Review the alert in approved endpoint, EDR, antivirus, SIEM, or device management tools.
2. Record the detection name, source, severity, timestamp, host, user, process, file, and rule references when available.
3. Check whether the security tool reports a completed action, failed action, partial action, or detection-only state.
4. Review activity before and after the alert.
5. Review endpoint, process, file, persistence, user, account, and network context.
6. Check whether similar alerts exist on the same host, same user, or other hosts.
7. Document facts separately from assumptions.
8. Prepare recommendations for an authorized reviewer.

## Alert / Detection Review

- Review detection category, confidence, severity, source, and timestamp.
- Review the rule, signature, analytic, or detection logic name when available.
- Determine whether the tool reported blocked, allowed, quarantined, failed, or detection-only status.
- Check whether similar alerts occurred before or after this detection.
- Review false-positive history when available.
- Document missing alert details that affect confidence.

## Endpoint / Host Context

- Review hostname or approved host reference, operating system, host role, and business function when available.
- Review endpoint protection status, sensor health, policy state, and last check-in when available.
- Check recent patching, maintenance, software installs, admin activity, help desk activity, and security tooling activity when available.
- Determine whether the host is high-value, shared, externally exposed, business critical, server, workstation, or kiosk.
- Do not isolate endpoints, change endpoint state, or collect sensitive evidence without explicit human approval.

## Process Activity Review

- Review process name, parent process, child processes, command line, execution path, start time, and user context.
- Check for unusual parent-child relationships, suspicious paths, unexpected interpreters, credential access behavior, lateral movement indicators, or defense evasion.
- Compare process activity against expected business software, admin tools, deployment tools, and security tooling.
- Review related process events before and after the detection.
- Do not kill processes or terminate sessions without explicit human approval.

## File / Persistence Review

- Review file name, path, extension, hash, signer, publisher, creation time, and modification time when available.
- Review startup items, scheduled tasks, services, registry entries, launch agents, scripts, or other persistence indicators when applicable.
- Check known-good software context and approved reputation sources if permitted by policy.
- Do not run suspicious files.
- Do not include malware execution instructions.
- Do not delete files, quarantine files, copy binaries, upload files, or share files without explicit human approval.

## User / Account Context

- Review the user or account reference, role, privilege level, and expected activity when allowed.
- Check whether the activity aligns with admin, help desk, deployment, patching, remote support, or security tooling work.
- Review related authentication activity, account alerts, or suspicious session context when available.
- Identify whether a privileged account, service account, shared account, or sensitive user is involved.
- Do not disable accounts, reset passwords, revoke sessions, contact users, or change account state without explicit human approval.

## Network Activity Review

- Review destination IPs, domains, URLs, ports, protocols, and timestamps from approved evidence sources.
- Check for repeated connections, beacon-like activity, payload download behavior, suspicious external destinations, or unexpected internal lateral movement.
- Compare destinations against known business services when available.
- Review related proxy, DNS, firewall, EDR, or SIEM telemetry when available.
- Do not block IPs, domains, URLs, hashes, or other indicators without explicit human approval.

## Related Alerts Review

- Review related endpoint, malware, identity, authentication, email, phishing, proxy, DNS, firewall, and SIEM alerts when available.
- Check alerts before and after the endpoint detection.
- Check whether the same host, user, process, file, hash, destination, or behavior appears elsewhere.
- Identify whether the alert appears isolated or part of a broader pattern.
- Document scope checks and unavailable evidence.

## Escalation Criteria

Escalation may be appropriate when:

- Confirmed malicious or high-confidence endpoint detection is present.
- Suspicious parent or child process activity is observed.
- Malware execution, payload staging, or unauthorized remote access tooling is suspected.
- Persistence, privilege escalation, credential access, lateral movement, or defense evasion indicators are present.
- Command-and-control or beacon-like network activity is observed.
- Multiple hosts show similar alerts.
- A privileged account, high-value user, sensitive system, or business-critical host is involved.
- Endpoint protection action failed, was disabled, or is unclear.
- The user, admin team, system owner, or support team denies expected activity.

## Human Approval Requirements

Do not perform containment, endpoint isolation, process termination, file deletion, quarantine, account action, sensitive evidence collection, user contact, escalation, closure, report publishing, or external communication without explicit human approval.

Approval is required before:

- Containment action
- Endpoint isolation
- Process termination
- File deletion or quarantine
- IP, domain, URL, hash, or indicator blocking
- Sensitive evidence collection
- Account disablement
- Password reset
- Session revocation
- User contact
- Escalation to another team or leadership
- Incident closure
- Report publishing
- External communication

## Documentation Expectations

Document:

- Alert source, detection name, severity, timestamp, and endpoint protection action status.
- Host, user, process, file, persistence, and network references when available.
- Related alerts and scope checks.
- Evidence reviewed and evidence unavailable.
- Facts, assumptions, and analyst interpretation.
- Benign explanations considered.
- Suspicious indicators observed.
- Approval-required actions and whether approval was obtained.
- Recommended next steps for the authorized reviewer.

## Closeout Expectations

Before closing or escalating an endpoint alert case, confirm:

- [ ] Related checklist is complete or incomplete items are explained
- [ ] Alert details are reviewed
- [ ] Endpoint and host context is reviewed or marked unavailable
- [ ] Process activity is reviewed or marked unavailable
- [ ] File and persistence activity is reviewed or marked unavailable
- [ ] User and account context is reviewed or marked unavailable
- [ ] Network activity is reviewed or marked unavailable
- [ ] Related alerts are reviewed or marked unavailable
- [ ] Benign explanations are considered
- [ ] Suspicious indicators are documented
- [ ] Facts are separated from assumptions
- [ ] Missing information is documented
- [ ] Approval-required actions are clearly marked
- [ ] No containment action was taken without approval
- [ ] No endpoint isolation was performed without approval
- [ ] No process termination was performed without approval
- [ ] No file deletion or quarantine was performed without approval
- [ ] No account action, user contact, escalation, closure, publishing, or external communication occurred without approval
- [ ] No malware execution instructions are included

## Report Output

Use `templates/ALERT-TRIAGE-REPORT.md` or `templates/INCIDENT-REPORT.md`.

## Lessons Learned

- Did endpoint telemetry answer the key questions?
- Should allowlists, detection logic, or response process be updated?
- Was business ownership clear?
