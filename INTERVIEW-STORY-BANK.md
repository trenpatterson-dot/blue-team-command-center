# Interview Story Bank

Reusable cybersecurity interview stories from completed labs, cases, and portfolio projects.

---

## IAM / Identity Alert Investigation — Failed Login Triage

**Project:** SOC IAM Identity Alert Investigation  
**Case Folder:** `cases/2026-05-25-soc-iam-identity-alert-investigation`

### Situation

I investigated an identity-focused alert involving failed Windows logon activity. The case centered on repeated Event ID 4625 failed login events, correlation with Event ID 4624 successful logon activity, and a review of account policy settings using `net accounts`.

### Task

My goal was to determine whether the activity showed signs of account compromise, brute-force behavior, weak account policy, or normal lab-controlled authentication noise.

### Action

I reviewed the failed login pattern, checked the timeline from approximately 12:10 PM to 12:30 PM, compared failed authentication events against successful logon evidence, and documented the IAM-related findings. I also reviewed password/account lockout policy context and preserved screenshots as sanitized public evidence.

### Result

The investigation found six failed login events, related successful logon correlation, and no confirmed compromise. The final triage decision was that this was controlled lab evidence with IAM lessons around failed login monitoring, account policy review, and identity-event documentation.

### Interview Angle

This story shows that I can investigate identity alerts, avoid jumping to conclusions, correlate Windows security events, document evidence clearly, and explain the difference between suspicious authentication activity and confirmed compromise.

### Skills Demonstrated

- IAM alert triage
- Windows Event ID 4625 and 4624 review
- Failed login analysis
- Account policy review
- Evidence handling
- SOC-style documentation
- Public/private evidence separation

---

## Account Compromise Practice Case - Risky Sign-In Triage

**Project:** Account Compromise Practice Case
**Case Folder:** `cases/2026-05-26-account-compromise-practice-case`

### Situation

I documented a simulated account compromise alert involving a successful login from an unusual location, repeated MFA prompts, and suspicious mailbox activity for a normal user account.

### Task

My goal was to assess whether the pattern required escalation while keeping the case review-only, preserving approval gates, and avoiding any invented or sensitive evidence.

### Action

I separated known facts from assumptions, documented the timeline from 2026-05-26 09:58 through 11:00 local, reviewed the fake/sanitized indicators, and noted that the evidence folders contained only placeholder files. I kept account disablement, password reset, MFA reset, session revocation, user contact, closure, and publishing behind human approval.

### Result

The final decision was to escalate for investigation. The case was not treated as confirmed compromise because user confirmation, MFA results, session details, mailbox details, device context, and related alerts were still missing.

### Interview Angle

This story shows that I can handle account compromise triage carefully: I can recognize a concerning identity pattern, avoid overclaiming, document evidence gaps, and keep response actions controlled until an authorized review is complete.

### Skills Demonstrated

- Account compromise triage
- Risky sign-in review
- MFA fatigue awareness
- Mailbox activity review
- Evidence gap documentation
- Human approval gates
- SOC-style escalation rationale

---

## Suspicious PowerShell Practice Case - Endpoint Triage

**Project:** Suspicious PowerShell Practice Case
**Case Folder:** `cases/2026-05-25-suspicious-powershell-practice-case`

### Situation

I documented a simulated endpoint alert involving suspicious PowerShell activity. The case focused on the SOC questions that matter before disposition: full command line, parent process, user context, host context, network activity, file activity, and related endpoint alerts.

### Task

My goal was to build a clean endpoint investigation record without pretending that screenshots, logs, process trees, commands, hashes, or endpoint exports existed.

### Action

I separated known facts from assumptions, kept the severity at medium, documented that malicious execution was not confirmed, and recorded the evidence gaps clearly. I also kept endpoint isolation, process termination, file deletion, blocking, account action, escalation, closure, publishing, and external messaging behind human approval.

### Result

The case became a reusable SOC endpoint investigation workflow for suspicious PowerShell triage. It is useful as a simulated portfolio case, with a clear manual follow-up to add sanitized lab evidence later.

### Interview Angle

This story shows that I can investigate suspicious PowerShell carefully, avoid overclaiming, explain why context matters, and document what evidence is still needed before calling activity malicious or taking response action.

### Skills Demonstrated

- Suspicious PowerShell triage
- Endpoint investigation workflow
- Command-line review planning
- Parent-process analysis planning
- Evidence gap documentation
- Human approval gates
- SOC-style endpoint reporting

---

## Malware Alert Practice Case - Detection-Only Triage

**Project:** Malware Alert Practice Case
**Case Folder:** `cases/2026-05-26-malware-alert-practice-case`

### Situation

I documented a simulated endpoint malware alert involving a suspicious executable written to a downloads folder and attempted launch from a temporary path. Endpoint protection reported detection-only status.

### Task

My goal was to decide whether the alert could be closed, contained, or escalated while preserving evidence boundaries and avoiding any unsupported malware claims.

### Action

I documented the known facts, preserved the medium severity, treated the fake hash and documentation-safe indicators as simulated values, and called out the missing process tree, execution outcome, file reputation, network success, and related-alert context. I also kept malware execution, sandbox detonation, isolation, deletion, quarantine, blocking, account action, closure, and publishing behind approval.

### Result

The final decision was to escalate for investigation. The case was not treated as confirmed malicious because endpoint protection was detection-only and execution context was incomplete.

### Interview Angle

This story shows that I can triage malware alerts without overreacting or overclaiming: I check action status, preserve evidence boundaries, document what is missing, and escalate when containment or execution status is unclear.

### Skills Demonstrated

- Malware alert triage
- Detection-only status review
- Endpoint process context review planning
- File/hash safety handling
- Evidence gap documentation
- Human approval gates
- SOC-style escalation rationale

---

## Endpoint Alert Practice Case - Detection-Only Process Triage

**Project:** Endpoint Alert Practice Case
**Case Folder:** `cases/2026-05-27-endpoint-alert-practice-case`

### Situation

I documented a simulated endpoint alert involving suspicious process activity on LAB-WKS-027. The alert described a script interpreter launched from an unusual parent process, attempted file write activity into a temporary directory, and detection-only endpoint protection status.

### Task

My goal was to determine the right triage decision while preserving the evidence boundary and avoiding unsupported claims about malicious activity.

### Action

I documented the known facts, preserved the medium severity, kept the fictional user, host, process, file, hash, IP, and domain values clearly labeled, and recorded the missing process tree, command line, file write result, persistence status, user context, network result, and related-alert context. I also kept containment, endpoint isolation, process termination, file deletion, account action, sensitive evidence collection, escalation, closure, and publishing behind approval.

### Result

The final decision was to escalate for investigation. The case was not treated as confirmed malicious because the process context and detection-only status require authorized review before endpoint response.

### Interview Angle

This story shows that I can triage endpoint alerts carefully: I review process and file context, recognize why detection-only status matters, document missing evidence, and avoid taking endpoint action without approval.

### Skills Demonstrated

- Endpoint alert triage
- Detection-only status review
- Process and file context review planning
- Evidence gap documentation
- Human approval gates
- SOC-style escalation rationale

---

## Vulnerability Finding Practice Case - Remediation Planning Triage

**Project:** Vulnerability Finding Practice Case
**Case Folder:** `cases/2026-05-27-vulnerability-finding-practice-case`

### Situation

I documented a simulated vulnerability finding for an outdated web service on LAB-WEB-040 at 192.0.2.80. The scenario stated that the service may be externally reachable, which raised the priority for remediation planning.

### Task

My goal was to triage the finding without running scans, inventing CVEs or CVSS scores, or implying proof that was not present in the case evidence.

### Action

I documented the known facts, preserved the high severity, labeled the host, IP, service, reported version, and fixed version as fictional or documentation-safe, and called out the missing reachability evidence, asset owner, patch status, compensating controls, exception status, and validation evidence. I also kept live scanning, exploitability validation, patching, firewall changes, ticket creation, owner contact, escalation, closure, and publishing behind human approval.

### Result

The final decision was to escalate for remediation planning. The case was not treated as an independently validated vulnerability because scan exports, reachability proof, CVE/CVSS validation, and remediation evidence were not present.

### Interview Angle

This story shows that I can handle vulnerability findings responsibly: I separate report intake from validation, avoid inventing severity evidence, document what is missing, and move toward approved remediation planning when exposure could matter.

### Skills Demonstrated

- Vulnerability finding triage
- Exposure and reachability review planning
- Remediation planning handoff
- Evidence gap documentation
- Human approval gates
- SOC/vulnerability management reporting
