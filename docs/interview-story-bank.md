# Microsoft SOC Interview Story Bank: SOC-018 to SOC-021

Use these stories for SOC Analyst and Security Analyst interviews. Keep the wording grounded in simulated case studies and portfolio investigations.

## SOC-018: Microsoft Sentinel Alert Triage

### Situation

A simulated Microsoft Sentinel alert showed repeated failed sign-in attempts followed by a successful login from the same source. The pattern could indicate credential guessing, but the alert alone did not prove compromise.

### Task

Review the identity evidence, determine the appropriate severity and disposition, and document when escalation would be required.

### Action

- Built a timeline of failed and successful authentication events.
- Confirmed that MFA completed successfully.
- Reviewed post-authentication activity for mailbox abuse, privilege changes, persistence, or other suspicious behavior.
- Mapped the observed pattern to MITRE ATT&CK techniques for Brute Force and Valid Accounts.
- Separated the initial risk indicator from mitigating evidence and documented remaining evidence gaps.

### Result

The simulated investigation supported a benign disposition and a reduction from medium to low severity. The final report retained monitoring recommendations and did not treat MFA completion as absolute proof that the activity was safe.

### Tools / Concepts

Microsoft Sentinel, SIEM, alert triage, sign-in analysis, MFA, timeline development, MITRE ATT&CK, severity assessment, incident response, escalation criteria.

### Recruiter-Friendly Takeaway

I can investigate an identity alert from trigger through documented disposition instead of escalating solely on the alert title.

### Safe Wording Boundary

Say: “In a simulated Sentinel portfolio investigation, I reviewed sign-in evidence and documented a benign disposition.”

Do not say: “I resolved a live customer account-compromise incident” or imply production tenant access.

## SOC-019: Microsoft Defender XDR Investigation

### Situation

A simulated Defender XDR alert identified PowerShell execution on a workstation. PowerShell can support legitimate administration or attacker activity, so the command required context.

### Task

Determine whether the process behavior supported malicious execution, benign administration, or an inconclusive disposition.

### Action

- Reviewed the parent process and interactive user context.
- Analyzed the `Get-Process` command line for encoding, obfuscation, downloads, or remote execution.
- Checked the device timeline for suspicious child processes, persistence, network activity, credential access, or privilege escalation.
- Mapped PowerShell and discovery behavior to MITRE ATT&CK while keeping the mapping evidence-bound.
- Documented higher-risk conditions that would justify escalation.

### Result

The simulated evidence supported benign administrative activity and lower severity. Monitoring and detection recommendations remained in place for encoded commands, download cradles, suspicious child processes, and privilege escalation.

### Tools / Concepts

Microsoft Defender XDR, endpoint investigation, process tree, PowerShell, command-line analysis, device timeline, MITRE ATT&CK, evidence collection, alert disposition.

### Recruiter-Friendly Takeaway

I can distinguish suspicious tooling from malicious behavior by reviewing process, command, user, device, and follow-on context.

### Safe Wording Boundary

Say: “I analyzed a simulated Defender XDR PowerShell alert and documented why the available evidence supported benign administrative activity.”

Do not claim live endpoint access, production containment, or measured incident-response impact.

## SOC-020: Microsoft Logic Apps SOC Automation

### Situation

Alert triage often requires analysts to repeatedly copy core fields, prepare evidence checklists, notify a queue, and draft incident notes. Inconsistent manual handling can slow review and create documentation gaps.

### Task

Design a Logic Apps workflow that supports the analyst without allowing automation to make the final incident determination.

### Action

- Defined Sentinel and Defender XDR trigger conditions.
- Selected core inputs such as alert ID, title, severity, timestamp, user, host, IP, and source reference.
- Designed normalization for missing fields without guessing.
- Added an evidence checklist, analyst notification, and draft incident note.
- Documented duplicate, connector, enrichment, notification, and note-creation failures.
- Prohibited automatic closure, final severity changes, account action, device isolation, and indicator blocking.

### Result

Produced a documentation-first SOC automation design that standardizes evidence collection and analyst workflow while preserving human approval for escalation, closure, containment, and external communication.

### Tools / Concepts

Logic Apps, Microsoft Sentinel, Defender XDR, automation, evidence collection, analyst workflow, notification, incident documentation, failure handling, least privilege, human approval.

### Recruiter-Friendly Takeaway

I think about automation as decision support: automate repeatable preparation, then require an analyst to validate evidence and approve action.

### Safe Wording Boundary

Say: “I designed a simulated Logic Apps SOC workflow with explicit human approval gates.”

Do not say it was deployed to a production tenant or that it reduced response time without measured evidence.

## SOC-021: Microsoft Purview Data Governance Security Review

### Situation

Simulated Microsoft Purview findings showed employee and payroll data across SharePoint, OneDrive, Teams, and Exchange with broad access, external sharing, missing sensitivity labels, inconsistent retention, and incomplete DLP coverage.

### Task

Prioritize security risk, recommend governance improvements, and identify when authorized privacy, legal, compliance, HR, data-owner, or incident-response review would be required.

### Action

- Reviewed sensitive information type matches and label coverage.
- Assessed SharePoint group access, external OneDrive links, Teams-connected permissions, and guest-access concerns.
- Identified DLP coverage gaps across Microsoft 365 locations.
- Reviewed retention consistency, audit visibility, DLP overrides, and insider-risk indicators.
- Distinguished exposure indicators from proof of misuse, breach, noncompliance, or employee misconduct.
- Recommended owner validation, controlled policy pilots, access recertification, and defined escalation paths.

### Result

Documented elevated data governance risk and prioritized authorized owner review. The analysis supported remediation recommendations without claiming legal breach, regulatory noncompliance, insider misconduct, or compliance authority.

### Tools / Concepts

Microsoft Purview, data governance, sensitive information types, sensitivity labels, DLP, SharePoint, OneDrive, Teams, Exchange, access governance, audit logs, insider risk, risk review.

### Recruiter-Friendly Takeaway

I can connect security operations to data governance by identifying exposure, control gaps, audit needs, and appropriate stakeholder boundaries.

### Safe Wording Boundary

Say: “I completed a lab-based Purview security review using simulated, sanitized findings and documented analyst recommendations.”

Do not claim tenant ownership, real employee data access, legal advice, compliance certification, or authority to enforce policy.

## Cross-Series Interview Close

“Together, these projects show how I approach Microsoft security work: start with the alert, validate identity and endpoint evidence, document severity and escalation criteria, improve repetitive workflow safely, and extend the same evidence-based thinking to sensitive data and access governance. The work is lab-based, and I keep final operational, legal, compliance, and policy decisions with authorized people.”
