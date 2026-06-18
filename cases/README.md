# Cases

Portfolio-ready SOC/Blue Team investigation cases.

## Featured Cases

### Vulnerability Finding Practice Case

**Path:** `cases/2026-05-27-vulnerability-finding-practice-case`

A simulated SOC/vulnerability management finding case focused on an outdated web service, possible external reachability, high-severity remediation planning, and approval-controlled review. This case is portfolio-ready as a simulated workflow example, but it does not include screenshots, logs, scan exports, CVEs, CVSS scores, affected-host proof, port/service evidence, remediation proof, validation evidence, or raw vulnerability evidence.

**Skills shown:**

- Vulnerability finding triage
- Exposure and reachability review planning
- Remediation planning handoff
- Evidence gap documentation
- Human approval gates
- SOC/vulnerability management reporting

### Endpoint Alert Practice Case

**Path:** `cases/2026-05-27-endpoint-alert-practice-case`

A simulated SOC endpoint alert triage case focused on suspicious process activity, detection-only endpoint protection status, temporary-directory file write context, and escalation decision-making. This case is portfolio-ready as a simulated workflow example, but it does not include screenshots, logs, EDR exports, endpoint telemetry exports, process-tree exports, packet captures, or raw endpoint evidence.

**Skills shown:**

- Endpoint alert triage
- Detection-only status review
- Process and file context review planning
- Evidence gap documentation
- Human approval gates
- SOC analyst reporting

### Malware Alert Practice Case

**Path:** `cases/2026-05-26-malware-alert-practice-case`

A simulated SOC malware alert triage case focused on a suspicious executable, detection-only endpoint protection status, incomplete execution context, and escalation decision-making. This case is portfolio-ready as a simulated workflow example, but it does not include screenshots, logs, EDR exports, sandbox results, binaries, malware samples, packet captures, or raw endpoint evidence.

**Skills shown:**

- Malware alert triage
- Detection-only status review
- Endpoint process context review planning
- File/hash safety handling
- Evidence gap documentation
- Human approval gates
- SOC analyst reporting

### Suspicious PowerShell Practice Case

**Path:** `cases/2026-05-25-suspicious-powershell-practice-case`

A simulated SOC endpoint investigation workflow focused on suspicious PowerShell triage, command-line review needs, parent-process context, endpoint evidence gaps, and approval-controlled response actions. This case is portfolio-ready as a simulated workflow example, but it does not include screenshots, logs, process trees, commands, or raw endpoint evidence yet.

**Skills shown:**

- Suspicious PowerShell triage
- Endpoint investigation workflow
- Command-line and parent-process review planning
- Evidence gap documentation
- Human approval gates
- SOC analyst reporting

### Account Compromise Practice Case

**Path:** `cases/2026-05-26-account-compromise-practice-case`

A simulated SOC investigation focused on risky sign-in activity, unusual login behavior, repeated MFA prompts, suspicious mailbox activity, and escalation decision-making.

**Skills shown:**

- Account compromise triage
- Risky sign-in investigation
- MFA fatigue analysis
- Mailbox activity review
- Escalation decision writing
- Evidence gap documentation
- SOC analyst reporting

### SOC IAM Identity Alert Investigation

**Path:** `cases/2026-05-25-soc-iam-identity-alert-investigation`

A completed SOC/IAM investigation focused on failed Windows logon activity, successful logon correlation, account policy review, and identity-focused triage decision-making.

**Skills shown:**

- IAM alert triage
- Windows Event ID 4625 and 4624 review
- Failed login investigation
- Account policy review with `net accounts`
- Evidence handling and public/private boundary control
- SOC-style reporting and handoff writing

- **DEFENDER‑002 — Microsoft Defender for Identity Investigation:** Identity threat investigation using Microsoft Defender for Identity. This case demonstrates how to triage a suspicious lateral‑movement alert, analyze privileged accounts and logon activity, map the behavior to MITRE ATT&CK techniques, and develop remediation recommendations.