# Microsoft / Azure Security Interview Story Bank: SOC-018 to SOC-023

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

## SOC-022: Azure IAM / RBAC Security Posture Review

### Situation

A lab-based Microsoft Azure security posture review used simulated evidence showing broad Owner and Contributor assignments, stale users and service principals, standing privileged access, possible storage and network exposure, and incomplete diagnostic coverage.

### Task

Assess the IAM, Azure RBAC, access governance, least-privilege, resource-exposure, and monitoring risks, then prioritize analyst recommendations without changing production access or cloud resources.

### Action

- Compared subscription-level Owner and Contributor assignments with documented business need and narrower scope options.
- Reviewed inactive users, service-principal ownership, privileged-access duration, and recurring access-review evidence.
- Assessed simulated storage public-access settings, an internet-exposed RDP rule, diagnostic settings, and alerts for privileged role changes.
- Connected identity, resource, and logging findings to Defender for Cloud-style posture recommendations.
- Distinguished cloud misconfiguration risk from proof of exploitation, unauthorized access, or data exposure.
- Recommended owner validation, least-privilege scope, governed groups, time-bound privilege, centralized logging, and accountable remediation tracking.

### Result

Documented elevated Azure security posture risk and a prioritized review path for cloud, identity, resource, and incident-response owners. The result supported remediation planning but did not claim compromise, production impact, or completed changes.

### Tools / Concepts

Microsoft Azure, Microsoft Entra ID, Azure RBAC, IAM, access governance, least privilege, privileged access, service principals, Defender for Cloud-style recommendations, diagnostic logs, audit logs, cloud security, evidence collection, analyst recommendations.

### Recruiter-Friendly Takeaway

I can review Azure access and posture evidence as a connected security problem: who has access, at what scope, to which resources, with what monitoring and governance.

### Safe Wording Boundary

Say: “I completed a lab-based Azure IAM and RBAC security posture review using simulated, sanitized evidence and documented least-privilege and monitoring recommendations.”

Do not claim live tenant ownership, production access changes, real customer data access, confirmed exploitation, or authority to accept cloud risk.

## SOC-023: Conditional Access / MFA Risk Review

### Situation

A simulated Microsoft Entra ID environment had broad MFA registration, but Conditional Access evidence showed possible gaps involving privileged-role coverage, excluded accounts, report-only risk controls, legacy authentication, and emergency access monitoring.

### Task

Determine whether identity protections were consistently enforced and recommend safer policy improvements without changing Conditional Access, disabling identities, or claiming account compromise.

### Action

- Separated MFA method registration from policy requirement and sign-in evidence showing whether the requirement was satisfied.
- Reviewed Conditional Access policy state, assignments, exclusions, grant controls, privileged-role coverage, and sign-in results.
- Assessed risky-sign-in handling, legacy-authentication exposure, and exception governance.
- Reviewed emergency access exclusions as a lockout-safety requirement while checking monitoring and periodic-test evidence.
- Mapped relevant identity risks to MITRE ATT&CK, including Valid Accounts, password attacks, MFA request generation, and Conditional Access policy modification.
- Recommended report-only analysis, pilot groups, dependency validation, rollback planning, recurring exclusion review, and authorized owner approval.

### Result

Documented elevated identity-control risk and prioritized privileged-role protection, exclusion governance, legacy-authentication migration, risky-sign-in handling, and emergency-account alerting. The evidence did not prove successful bypass or account compromise.

### Tools / Concepts

Microsoft Entra ID, Conditional Access, MFA, identity protection, risky sign-ins, legacy authentication, emergency access, access governance, cloud identity security, MITRE ATT&CK, evidence collection, analyst recommendations.

### Recruiter-Friendly Takeaway

I can evaluate whether identity controls work in practice by reviewing enforcement, exceptions, risk signals, authentication paths, and operational safety boundaries.

### Safe Wording Boundary

Say: “I completed a simulated Conditional Access and MFA risk review and documented controlled, owner-approved policy recommendations.”

Do not claim employer tenant access, live policy administration, successful attack prevention, confirmed compromise, or authority to enforce identity changes.

## Cross-Series Interview Close

“Together, these projects show how I approach Microsoft and Azure security work: start with the alert, validate identity and endpoint evidence, document severity and escalation criteria, improve repetitive workflow safely, extend evidence-based analysis to sensitive data and cloud access governance, and evaluate whether identity controls are consistently enforced. The work is lab-based, and I keep final operational, access, policy, legal, and compliance decisions with authorized people.”
