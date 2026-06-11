
# Blue Team Command Center

Blue Team Command Center is a Microsoft-focused SOC analyst portfolio built around documented lab investigations and case studies. The featured series demonstrates alert triage, incident investigation, MITRE ATT&CK mapping, evidence-based reporting, and analyst-controlled automation.

## Recruiter Snapshot

- **Target roles:** Microsoft SOC Analyst, Security Operations Analyst, and Blue Team Analyst.
- **Investigation focus:** Microsoft Sentinel alerts, Microsoft Defender XDR endpoint context, suspicious PowerShell, Azure identity risk, detection tuning, and Logic Apps SOC automation.
- **Analyst workflow:** Triage the alert, separate facts from interpretation, map observed behavior to MITRE ATT&CK where supported, document evidence gaps, and communicate findings.
- **Reporting:** Technical case notes, investigation summaries, recommended next steps, and executive-ready incident communication.
- **AI and automation boundary:** AI or automation may assist with organizing, enriching, routing, or reviewing documented information, but a human analyst validates the output and retains approval authority for decisions and actions.

> **Portfolio boundary:** SOC-011 through SOC-020 are lab and case-study artifacts. They demonstrate investigation method, documentation discipline, and analyst judgment; they do not represent production SOC employment, unrestricted enterprise tool access, tenant ownership, live customer data access, or authority to act on live systems.

## Microsoft SOC Analyst Portfolio Series

The ten-case sequence follows a practical Microsoft security operations progression:

**Sentinel -> Defender -> PowerShell -> Azure Identity -> Detection Tuning -> Incident Reporting -> AI-Assisted Review -> Sentinel Investigation -> Defender XDR Investigation -> Logic Apps Automation**

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
