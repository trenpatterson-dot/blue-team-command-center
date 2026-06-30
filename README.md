
# Blue Team Command Center

Portfolio Website: https://cybersecurity-site-portfolio.vercel.app/

Blue Team Command Center is a Microsoft-focused SOC analyst portfolio built around documented lab investigations and case studies. The featured series demonstrates alert triage, incident investigation, MITRE ATT&CK mapping, evidence-based reporting, analyst-controlled automation, data governance risk review, Azure security posture assessment, cloud identity protection review, risky sign-in investigation, and cyber threat intelligence reporting.

## Recruiter Snapshot

- **Target roles:** Microsoft SOC Analyst, Security Operations Analyst, and Blue Team Analyst.
- **Investigation focus:** Microsoft Sentinel alerts, Microsoft Defender XDR endpoint context, suspicious PowerShell, Azure identity risk, detection tuning, Logic Apps SOC automation, Microsoft Purview data governance, Azure IAM / RBAC security posture, Conditional Access / MFA risk, Identity Protection risky sign-in triage, and CTI threat actor TTP tracking.
- **Analyst workflow:** Triage the alert, separate facts from interpretation, map observed behavior to MITRE ATT&CK where supported, document evidence gaps, and communicate findings.
- **Reporting:** Technical case notes, investigation summaries, recommended next steps, and executive-ready incident communication.
- **AI and automation boundary:** AI or automation may assist with organizing, enriching, routing, or reviewing documented information, but a human analyst validates the output and retains approval authority for decisions and actions.

> **Portfolio boundary:** SOC-011 through SOC-024 and CTI-001 are lab and case-study artifacts. They demonstrate investigation method, documentation discipline, and analyst judgment; they do not represent production SOC employment, unrestricted enterprise tool access, tenant ownership, live customer data access, legal or compliance authority, real-world attribution authority, or authority to act on live systems.

## Featured Recruiter Path: SOC-018 to SOC-024

This seven-project sequence presents one connected Microsoft Security Analyst story:

| Stage | Project | Analyst Value |
| --- | --- | --- |
| Detect and triage | [SOC-018: Microsoft Sentinel Alert Investigation](cases/2026-06-soc-018-microsoft-sentinel-alert-investigation/) | Reviewed sign-in evidence, built a timeline, mapped MITRE ATT&CK, and documented severity and disposition |
| Investigate the endpoint | [SOC-019: Microsoft Defender XDR Investigation](cases/2026-06-soc-019-microsoft-defender-xdr-investigation/) | Analyzed process context, PowerShell behavior, device activity, and escalation indicators |
| Improve the workflow | [SOC-020: Microsoft Logic Apps SOC Automation](cases/2026-06-soc-020-microsoft-logic-apps-soc-automation/) | Designed evidence collection, analyst notification, draft documentation, failure handling, and human approval gates |
| Reduce data risk | [SOC-021: Microsoft Purview Data Governance Security Review](cases/2026-06-soc-021-microsoft-purview-data-governance-security-review/) | Assessed sensitive data exposure, DLP gaps, access governance, audit visibility, and recommendations requiring owner approval |
| Review cloud posture | [SOC-022: Azure Security Posture / IAM & RBAC Governance Review](cases/2026-06-soc-022-azure-security-posture-iam-rbac-review/) | Assessed Azure RBAC, IAM and access governance, least privilege, privileged access, Conditional Access / MFA, Defender for Cloud-style recommendations, diagnostic and audit logging, and cloud misconfiguration risk |
| Protect cloud identities | [SOC-023: Azure Conditional Access / MFA Risk Review](cases/2026-06-soc-023-azure-conditional-access-mfa-risk-review/) | Reviewed identity protection, Conditional Access, MFA enforcement, risky sign-ins, access-control gaps, cloud identity governance, and analyst recommendations |
| Investigate risky sign-ins | [SOC-024: Azure Sign-In Risk / Identity Protection Investigation](cases/2026-06-soc-024-azure-sign-in-risk-identity-protection-investigation/) | Investigated Microsoft Entra ID risky sign-in evidence, Azure sign-in logs, MFA prompts, Conditional Access blocks, password spraying indicators, valid accounts risk, account compromise triage, session revocation recommendations, and identity security response |

Recruiter and interview resources:

- [Microsoft SOC portfolio series guide](docs/microsoft-soc-portfolio-series.md)
- [SOC-018 to SOC-023 interview story bank](docs/interview-story-bank.md)

## Newest Security Review Cases

These newer case studies extend the portfolio into SOC automation, AI security, identity attack paths, Microsoft Purview insider-risk review, Microsoft Entra Conditional Access governance, and cyber threat intelligence.

| Case | Review Focus | Recruiter-Relevant Skills |
| --- | --- | --- |
| [SOC-024: Azure Sign-In Risk / Identity Protection Investigation](cases/2026-06-soc-024-azure-sign-in-risk-identity-protection-investigation/) | Investigate a simulated Microsoft Entra ID risky sign-in involving failed attempts, MFA prompts, impossible travel-style timing, and Conditional Access blocks | Microsoft Entra ID, Azure sign-in logs, risky sign-in triage, MFA, Conditional Access, password spraying, valid accounts, account compromise triage, session revocation, and identity security |
| [CTI-001: Threat Actor TTP Tracking and Intelligence Brief](cases/2026-06-cti-001-threat-actor-ttp-tracking-intelligence-brief/) | Track fictional activity cluster Silver Orchard across cloud identity targeting, phishing, credential abuse, and password spraying | Cyber threat intelligence, TTP tracking, MITRE ATT&CK mapping, analytic confidence, indicators of compromise handling, adversary infrastructure review, detection opportunities, and defensive recommendations |
| [SOC-020: Microsoft Logic Apps SOC Automation](cases/2026-06-soc-020-microsoft-logic-apps-soc-automation/) | Support a Sentinel / Defender XDR alert workflow | Logic Apps workflow design, analyst notification, incident note drafting, failure handling, and human approval gates |
| [AI-SEC-001: Securing an AI Assistant](cases/2026-06-ai-sec-001-securing-an-ai-assistant/) | Review an AI assistant before SOC production use | Prompt injection risk, sensitive data leakage controls, tool abuse prevention, human approval gates, audit logging, and AI governance |
| [IAM-011: Identity Attack Path Review](cases/2026-06-iam-011-identity-attack-path-review/) | Review identity attack paths across privileged access and Conditional Access gaps | Entra ID risk review, privileged account review, attack-path documentation, Conditional Access recommendations, and remediation planning |
| [PURVIEW-001: Microsoft Purview Insider Risk Investigation](cases/2026-06-purview-001-insider-risk-investigation/) | Review insider-risk and data-loss scenarios using Microsoft Purview framing | Insider-risk analysis, DLP review, sensitive-data handling, audit evidence review, and owner-approved remediation planning |
| [ENTRA-001: Conditional Access Security Review](cases/2026-06-entra-001-conditional-access-security-review/) | Review Conditional Access, MFA, legacy authentication, sign-in risk, and remediation planning | Microsoft Entra ID policy review, MFA assessment, legacy-authentication risk, risky sign-in analysis, and identity-control governance |

## Microsoft SOC Analyst Portfolio Series

The fourteen-case sequence follows a practical Microsoft security operations progression:

**Sentinel -> Defender -> PowerShell -> Azure Identity -> Detection Tuning -> Incident Reporting -> AI-Assisted Review -> Sentinel Investigation -> Defender XDR Investigation -> Logic Apps Automation -> Purview Data Governance -> Azure Security Posture -> Conditional Access / MFA -> Identity Protection Risky Sign-In**

| Case | Investigation Focus | Recruiter-Relevant Skills |
| --- | --- | --- |
| [SOC-011: Microsoft Sentinel Alert Triage](cases/2026-06-soc-011-microsoft-sentinel-alert-triage/) | Review and prioritize a SIEM alert | Alert triage, KQL-based investigation, evidence review, and documented disposition |
| [SOC-012: Microsoft Defender EDR Alert Investigation](cases/2026-06-soc-012-microsoft-defender-edr-alert-investigation/) | Investigate endpoint activity and process context | EDR investigation, evidence correlation, scope assessment, and escalation reasoning |
| [SOC-013: PowerShell Suspicious Script Investigation](cases/2026-06-soc-013-powershell-suspicious-script-investigation/) | Assess suspicious command and script behavior | PowerShell analysis, process-chain review, MITRE ATT&CK mapping, and evidence gaps |
| [SOC-014: Azure Sign-In Risk Review](cases/2026-06-soc-014-azure-sign-in-risk-review/) | Evaluate identity and authentication risk | Azure sign-in analysis, identity context, risk assessment, and approval-gated response |
| [SOC-015: Sentinel Detection Rule Tuning Review](cases/2026-06-soc-015-sentinel-detection-rule-tuning-review/) | Review detection quality and false positives | Detection logic, tuning recommendations, coverage preservation, and validation planning |
| [SOC-016: Incident Report / Executive Summary](cases/2026-06-soc-016-incident-report-executive-summary/) | Convert investigation findings into clear reporting | Technical reporting, evidence-based conclusions, executive communication, and next steps |
| [SOC-017: AI-Assisted SOC Workflow Review](cases/2026-06-soc-017-ai-assisted-soc-workflow-review/) | Evaluate responsible AI support in a SOC workflow | AI-assisted synthesis, analyst verification, limitation tracking, and human approval boundaries |
| [SOC-018: Microsoft Sentinel Alert Investigation](cases/2026-06-soc-018-microsoft-sentinel-alert-investigation/) | Investigate a suspicious sign-in alert through final reporting | Sign-in log review, entity investigation, timeline creation, severity assessment, and analyst disposition |
| [SOC-019: Microsoft Defender XDR Investigation](cases/2026-06-soc-019-microsoft-defender-xdr-investigation/) | Investigate suspicious PowerShell execution on an endpoint | Defender XDR triage, process-tree review, command analysis, ATT&CK mapping, and incident reporting |
| [SOC-020: Microsoft Logic Apps SOC Automation](cases/2026-06-soc-020-microsoft-logic-apps-soc-automation/) | Support a Sentinel / Defender XDR alert workflow | Evidence collection, analyst notification, incident note drafting, failure handling, and human approval boundaries |
| [SOC-021: Microsoft Purview Data Governance Security Review](cases/2026-06-soc-021-microsoft-purview-data-governance-security-review/) | Review sensitive data risk across SharePoint, OneDrive, Teams, and Exchange | Sensitive data discovery, sensitivity labels, DLP gaps, access governance, audit visibility, and analyst recommendations |
| [SOC-022: Azure Security Posture / IAM & RBAC Governance Review](cases/2026-06-soc-022-azure-security-posture-iam-rbac-review/) | Review identity, access, resource exposure, and monitoring risk in Microsoft Azure | Azure RBAC, IAM and access governance, least privilege, privileged access, Conditional Access / MFA, Defender for Cloud-style recommendations, diagnostic and audit logging, and cloud misconfiguration risk |
| [SOC-023: Azure Conditional Access / MFA Risk Review](cases/2026-06-soc-023-azure-conditional-access-mfa-risk-review/) | Review identity protection and sign-in control gaps in Microsoft Azure | Conditional Access, MFA enforcement, risky sign-in review, access-control gaps, cloud identity governance, and analyst recommendations |
| [SOC-024: Azure Sign-In Risk / Identity Protection Investigation](cases/2026-06-soc-024-azure-sign-in-risk-identity-protection-investigation/) | Investigate Microsoft Entra ID risky sign-in activity and possible credential exposure | Azure sign-in logs, Identity Protection, risky sign-in alert triage, MFA prompt review, Conditional Access result analysis, password spraying, valid accounts, account compromise triage, session revocation, and identity security |
| SOC-020 | Logic Apps Automated Alert Triage | Microsoft Sentinel, Logic Apps, PowerShell, Security Automation, MITRE ATT&CK |
## What This Repository Provides

Beyond the featured series, Blue Team Command Center is a portable, Markdown-first workbench for SOC and blue-team analysis. It supports case intake, evidence organization, investigation playbooks, framework mapping, report drafting, and decision-support summaries.

- Provides repeatable templates for alert triage, incident reporting, threat hunting, phishing analysis, detection engineering, vulnerability remediation, audit findings, executive summaries, and lessons learned.
- Provides safe investigation playbooks for failed login, phishing, suspicious PowerShell, malware alert triage, and account compromise scenarios.
- Includes a v0.5 featured SOC case portfolio covering IAM alerts, account compromise, suspicious PowerShell, malware alerts, endpoint alerts, and vulnerability finding/remediation planning.
- Separates known facts from analyst interpretation, assumptions, and missing information.
- Captures recommended next steps without taking action on behalf of the analyst.
- Supports copy and paste ready reporting into approved systems.

The repository is designed to move between computers as a normal folder. Its core files are Markdown and do not require Python, administrator rights, internet access, cloud services, or installed security tools.

## v0.5 Featured SOC Case Portfolio

This repo now includes a featured SOC case portfolio index at:

`cases/README.md`

The featured cases show a practical blue-team investigation progression:

- SOC IAM Identity Alert Investigation
- Account Compromise Practice Case
- Suspicious PowerShell Practice Case
- Malware Alert Practice Case
- Endpoint Alert Practice Case
- Vulnerability Finding Practice Case

Together, these cases demonstrate identity alert triage, account compromise review, endpoint investigation workflow, malware alert triage, evidence-gap documentation, vulnerability remediation planning, public/private evidence boundaries, and human approval gates.

## What This System Must Not Do

- Store secrets, credentials, API keys, tokens, passwords, private keys, or restricted company data by default.
- Store company logs, screenshots, exports, packet captures, email attachments, or case evidence unless company policy explicitly permits it.
- Delete, block, isolate, disable accounts, send emails, publish reports, close incidents, or change production systems.
- Replace company-approved systems of record.

## Folder Guide

- `templates/` contains reusable report templates.
- `playbooks/` contains safe investigation guides.
- `mappings/` contains framework mapping references.
- `checklists/` contains review and approval checklists.
- `cases/` contains local case folders for permitted lab or approved work.
- `outputs/` is for drafted summaries and sanitized deliverables.
- `docs/` is for supporting documentation.
- `scripts/optional/` is reserved for later helper scripts. The core system does not depend on scripts.

## Safety Guides

- `docs/public-private-boundary.md` defines what is safe to share and what must stay private.
- `docs/repo-readiness-checklist.md` should be reviewed before Git commits, pushes, or sharing.
- `docs/company-equipment-safe-use.md` explains how to use this folder safely on company-owned equipment.

## Recommended Workflow

1. Read `SYSTEM-RULES.md`.
2. For company-owned equipment, read `COMPANY-USE-GUIDE.md` before creating a case.
3. Review `docs/public-private-boundary.md`.
4. Start with `CASE-INTAKE-TEMPLATE.md`.
5. Choose the closest playbook from `playbooks/`.
6. Draft reports from `templates/`.
7. Review with the checklists in `checklists/`.
8. Copy only approved, sanitized content into the official system of record.

## Safety Position

This project is documentation-first and human-controlled. It may recommend actions, but the analyst or authorized incident owner must approve and perform any operational response.
