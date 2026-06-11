# Microsoft SOC Portfolio Series: SOC-018 to SOC-021

## Series Overview

SOC-018 through SOC-021 form a connected, lab-based Microsoft Security Analyst portfolio series:

1. Detect and triage suspicious identity activity in Microsoft Sentinel.
2. Investigate endpoint behavior in Microsoft Defender XDR.
3. Design a Logic Apps workflow intended to reduce repetitive SOC work while preserving human approval.
4. Review Microsoft Purview findings for sensitive data, DLP, access governance, and audit risk.

The series is designed for SOC Analyst and Security Analyst applications, recruiter conversations, interviews, LinkedIn positioning, and portfolio review.

> **Claim boundary:** These are simulated case studies and portfolio investigations. They demonstrate analyst method, documentation, and judgment; they do not represent production SOC employment, live Microsoft tenant ownership, enterprise authority, real customer data access, or legal/compliance authority.

## What the Series Proves

- I can move from alert triage to evidence-based disposition.
- I can review identity and endpoint context instead of treating alerts as conclusions.
- I can build timelines and distinguish risk indicators from mitigating evidence.
- I can map observed behavior to MITRE ATT&CK without overstating certainty.
- I can document escalation criteria and evidence gaps.
- I can design SOC automation that supports an analyst workflow without replacing human judgment.
- I can connect security operations with data governance, DLP, access governance, and audit visibility.
- I can communicate the same case to technical, executive, recruiter, and general audiences.

## Connected Analyst Story

| Project | Security Question | Analyst Work | Documented Outcome |
| --- | --- | --- | --- |
| [SOC-018](../cases/2026-06-soc-018-microsoft-sentinel-alert-investigation/) | Is repeated failed sign-in activity followed by success malicious? | Reviewed authentication sequence, MFA, follow-on activity, severity, and ATT&CK context | Simulated alert documented as benign activity with continued monitoring |
| [SOC-019](../cases/2026-06-soc-019-microsoft-defender-xdr-investigation/) | Does PowerShell execution indicate endpoint compromise? | Reviewed process tree, command line, parent process, device timeline, and follow-on behavior | Simulated alert documented as benign administrative activity with monitoring recommendations |
| [SOC-020](../cases/2026-06-soc-020-microsoft-logic-apps-soc-automation/) | How can repetitive alert handling be standardized safely? | Designed field extraction, evidence checklist, notification, draft notes, failure handling, and approval gates | Documentation-first workflow design that stops before final disposition or containment |
| [SOC-021](../cases/2026-06-soc-021-microsoft-purview-data-governance-security-review/) | Where does sensitive Microsoft 365 data create governance risk? | Reviewed simulated labels, sharing, DLP coverage, retention consistency, and audit visibility | Elevated risk documented for authorized owner review without claiming breach or noncompliance |

## Project-by-Project Summary

### SOC-018: Microsoft Sentinel Alert Triage

**Focus:** SIEM alert triage and identity investigation.

The simulated case begins with repeated failed sign-ins followed by successful authentication. The portfolio investigation reviews MFA completion, user activity, follow-on behavior, and evidence gaps before lowering severity and documenting a benign disposition.

**Skills shown:** Microsoft Sentinel, SIEM analysis, alert triage, identity evidence, timeline development, MITRE ATT&CK, severity assessment, escalation criteria, and incident reporting.

### SOC-019: Microsoft Defender XDR Investigation

**Focus:** Endpoint alert triage and suspicious PowerShell analysis.

The simulated investigation reviews the PowerShell command, parent process, device timeline, network activity, child processes, persistence indicators, and user context. The evidence supports a benign administrative disposition while preserving monitoring recommendations.

**Skills shown:** Defender XDR, endpoint investigation, process-tree analysis, command-line review, PowerShell, MITRE ATT&CK, evidence collection, incident response reasoning, and documentation.

### SOC-020: Microsoft Logic Apps SOC Automation

**Focus:** Analyst-controlled SOC automation.

The documentation-first design receives a Sentinel or Defender XDR alert, extracts core fields, prepares an evidence checklist, notifies the analyst, and drafts an incident note. Failure paths and prohibited automatic actions are explicit.

**Skills shown:** Logic Apps, automation design, analyst workflow, evidence collection, notifications, incident note drafting, error handling, least privilege, escalation criteria, and human approval.

### SOC-021: Microsoft Purview Data Governance Security Review

**Focus:** Sensitive data discovery and governance risk.

The lab-based review examines simulated Microsoft Purview findings across SharePoint, OneDrive, Teams, and Exchange. It identifies missing sensitivity labels, broad access, external sharing, DLP gaps, inconsistent retention, and audit-review needs.

**Skills shown:** Microsoft Purview, data governance, sensitive information types, sensitivity labels, DLP, access governance, audit logs, insider risk considerations, risk review, and analyst recommendations.

## Tools and Concepts Demonstrated

| Area | Tools and Concepts |
| --- | --- |
| SIEM and identity | Microsoft Sentinel, sign-in analysis, MFA context, entity review, alert triage |
| Endpoint security | Microsoft Defender XDR, process trees, PowerShell, device timelines, command-line analysis |
| Incident response | Evidence collection, timelines, severity assessment, escalation criteria, disposition, reporting |
| Threat framework | MITRE ATT&CK mapping with evidence and uncertainty boundaries |
| Automation | Logic Apps, trigger design, normalized inputs, notifications, draft notes, failure handling |
| Data security | Microsoft Purview, sensitive information types, sensitivity labels, DLP, retention, insider risk |
| Governance | SharePoint, OneDrive, Teams, Exchange, access governance, audit visibility, owner review |
| Communication | Technical summaries, executive summaries, recruiter language, LinkedIn drafts, interview stories |

## Recruiter Keyword Map

| Recruiter Keyword | Portfolio Evidence |
| --- | --- |
| SOC Analyst | Four connected simulated cases covering triage, investigation, automation, and governance |
| Security Analyst | Evidence review, risk analysis, recommendations, and stakeholder boundaries |
| Microsoft Sentinel | SOC-018 sign-in alert investigation and SOC-020 workflow input |
| Defender XDR | SOC-019 endpoint investigation and SOC-020 workflow input |
| Microsoft Purview | SOC-021 sensitive data and governance review |
| Logic Apps | SOC-020 SOC automation design |
| SIEM | Sentinel alert intake, timeline analysis, severity, and disposition |
| Alert triage | SOC-018 and SOC-019 evidence-based alert review |
| Incident response | Escalation criteria, monitoring, reporting, and authorized containment boundaries |
| Evidence collection | Authentication, process, device, alert, sharing, label, DLP, and audit context |
| MITRE ATT&CK | Identity and PowerShell technique mapping with analyst validation |
| Data governance | SOC-021 classification, retention, sharing, and ownership review |
| DLP | SOC-021 coverage-gap and simulation-mode recommendations |
| Access governance | SharePoint groups, OneDrive links, guests, owners, and recertification |
| Automation | SOC-020 standardized enrichment, notification, and documentation |
| Analyst workflow | Detect, investigate, document, recommend, escalate, and retain human approval |
| Escalation criteria | Explicit conditions for deeper investigation, containment requests, or stakeholder review |

## Interview Talking Points

### How I Approach Alerts

“I start by treating the alert as a lead, not a conclusion. I identify the triggering evidence, build a timeline, review the affected entities, look for follow-on behavior, document gaps, and then assign severity and disposition based on what the evidence supports.”

### How I Use MITRE ATT&CK

“I use MITRE ATT&CK to describe observed behavior and support communication. I do not use a technique match as proof of malicious intent. The mapping stays tied to the evidence and is revised if the investigation changes.”

### How I Think About Automation

“I automate repetitive collection and formatting, not final judgment. My Logic Apps case prepares context, a checklist, a notification, and a draft note, then stops at a human analyst approval checkpoint.”

### How I Handle Data Governance

“I separate security risk from legal or compliance conclusions. I can identify broad access, external sharing, missing labels, DLP gaps, and audit needs, but authorized data owners and privacy, legal, compliance, or HR stakeholders make final policy decisions.”

### How I Communicate Uncertainty

“I state what is known, what is inferred, and what is missing. If the evidence does not prove compromise, misuse, or breach, I say that directly and recommend the next evidence or escalation step.”

## STAR-Style Stories

### Identity Alert Triage

**Situation:** A simulated Sentinel alert showed repeated failed sign-ins followed by a successful login.

**Task:** Determine whether the sequence supported account compromise or a lower-risk explanation.

**Action:** Built an authentication timeline, reviewed MFA completion and post-authentication activity, mapped relevant ATT&CK techniques, and documented risk indicators and mitigating evidence.

**Result:** Produced an evidence-based benign disposition with reduced severity and continued-monitoring recommendations.

### Endpoint Investigation

**Situation:** A simulated Defender XDR alert flagged suspicious PowerShell execution.

**Task:** Determine whether the command and process context supported malicious endpoint activity.

**Action:** Reviewed the parent process, command line, child processes, device timeline, network behavior, persistence indicators, and privilege context.

**Result:** Documented benign administrative activity while preserving detection and escalation recommendations for higher-risk PowerShell patterns.

### Analyst-Controlled Automation

**Situation:** Repetitive alert handling could lead to inconsistent evidence collection and incident notes.

**Task:** Design a repeatable workflow without allowing automation to make response decisions.

**Action:** Defined Logic Apps trigger conditions, normalized fields, evidence checklists, analyst notifications, draft documentation, failure controls, and prohibited automatic actions.

**Result:** Produced a reviewable SOC automation design intended to improve consistency while retaining human approval for severity, escalation, closure, and containment.

### Data Governance Risk Review

**Situation:** Simulated Purview findings showed sensitive Microsoft 365 data with broad access, external links, missing labels, and DLP gaps.

**Task:** Prioritize security risk and recommend next steps without claiming legal or compliance authority.

**Action:** Reviewed sharing, classification, retention, DLP coverage, access governance, insider-risk considerations, and audit visibility.

**Result:** Documented elevated governance risk, prioritized owner review, and separated security recommendations from legal, privacy, compliance, HR, and policy decisions.

## Resume Bullet Ideas

Use these only as portfolio-project bullets, not as claims of production employment:

- Built a four-project Microsoft Security Analyst portfolio covering Sentinel alert triage, Defender XDR endpoint investigation, Logic Apps SOC automation, and Purview data governance.
- Investigated simulated Microsoft Sentinel sign-in activity by building a timeline, reviewing MFA and follow-on behavior, mapping MITRE ATT&CK, and documenting severity and disposition.
- Analyzed a simulated Defender XDR PowerShell alert using process-tree, command-line, device-timeline, and escalation-context review.
- Designed a documentation-first Logic Apps analyst workflow for evidence collection, notification, incident note drafting, failure handling, and human approval.
- Assessed simulated Microsoft Purview findings across SharePoint, OneDrive, Teams, and Exchange for sensitive data, DLP, access governance, and audit risk.
- Produced technical, executive, recruiter, and general-audience documentation while preserving evidence and authority boundaries.

## LinkedIn Positioning Ideas

### Series Post

“I completed a four-part Microsoft Security Analyst portfolio series that follows a connected workflow: Sentinel alert triage, Defender XDR endpoint investigation, Logic Apps SOC automation, and Purview data governance. Each project is a simulated case study focused on evidence-based analysis, clear escalation criteria, and human approval.”

### Skills Post

“The series helped me practice how Microsoft security tools connect: Sentinel surfaces identity risk, Defender XDR adds endpoint context, Logic Apps can standardize repetitive analyst work, and Purview extends security thinking into sensitive data, DLP, access governance, and audit visibility.”

### Interview-Readiness Post

“My main takeaway was that tools do not make the final decision. Strong analyst work means validating evidence, documenting uncertainty, communicating risk, and knowing when authorized stakeholders must approve the next action.”

## Evidence and Claim Boundaries

- Say **simulated case study**, **portfolio investigation**, or **lab-based review**.
- Do not describe the cases as production SOC employment.
- Do not imply ownership or administration of a live Microsoft tenant.
- Do not imply access to real customer, employee, or company data.
- Do not claim measured production outcomes such as reduced mean time to respond unless evidence exists.
- Do not describe ATT&CK mappings, DLP matches, or alerts as proof of malicious intent.
- Do not claim legal, privacy, compliance, HR, or regulatory authority.
- Describe Logic Apps as a workflow design; do not imply it was deployed to production.
- Keep closure, escalation, containment, access changes, policy enforcement, and external communication under human or authorized stakeholder approval.
