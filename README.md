
# Blue Team Command Center

Blue Team Command Center is a portable, Markdown-first workbench for SOC and blue-team analysis. It helps an analyst intake cases, organize evidence notes, follow playbooks, map work to common frameworks, draft reports, and prepare decision-support summaries.

The system is designed to move between computers as a normal folder. The core files are Markdown and do not require Python, administrator rights, internet access, cloud services, or installed tools.

## What This System Does

- Provides repeatable templates for alert triage, incident reporting, threat hunting, phishing analysis, detection engineering, vulnerability remediation, audit findings, executive summaries, and lessons learned.
- Provides safe investigation playbooks for failed login, phishing, suspicious PowerShell, malware alert triage, and account compromise scenarios.
- Includes a v0.5 featured SOC case portfolio covering IAM alerts, account compromise, suspicious PowerShell, malware alerts, endpoint alerts, and vulnerability finding/remediation planning.
- Separates known facts from analyst interpretation, assumptions, and missing information.
- Captures recommended next steps without taking action on behalf of the analyst.
- Supports copy and paste ready reporting into approved systems.

## Microsoft SOC Analyst Series

This documented case sequence presents a focused Microsoft SOC analyst workflow:

**Sentinel -> Defender -> PowerShell -> Azure Identity -> Detection Tuning -> Incident Reporting -> AI-Assisted SOC Workflow**

| Case ID | Case Name | Skill Demonstrated | Link to Case Folder |
| --- | --- | --- | --- |
| SOC-011 | Microsoft Sentinel Alert Triage | SIEM alert review, KQL-based investigation, and triage documentation | [Open case](cases/2026-06-soc-011-microsoft-sentinel-alert-triage/) |
| SOC-012 | Microsoft Defender EDR Alert Investigation | Endpoint alert investigation, process review, and evidence correlation | [Open case](cases/2026-06-soc-012-microsoft-defender-edr-alert-investigation/) |
| SOC-013 | PowerShell Suspicious Script Investigation | PowerShell command analysis, process context review, and suspicious activity assessment | [Open case](cases/2026-06-soc-013-powershell-suspicious-script-investigation/) |
| SOC-014 | Azure Sign-In Risk Review | Azure identity sign-in analysis, risk review, and authentication context assessment | [Open case](cases/2026-06-soc-014-azure-sign-in-risk-review/) |
| SOC-015 | Sentinel Detection Rule Tuning Review | Detection logic review, false-positive analysis, and tuning recommendations | [Open case](cases/2026-06-soc-015-sentinel-detection-rule-tuning-review/) |
| SOC-016 | Incident Report / Executive Summary | Technical incident reporting and concise executive communication | [Open case](cases/2026-06-soc-016-incident-report-executive-summary/) |
| SOC-017 | AI-Assisted SOC Workflow Review | AI-assisted analysis with analyst validation, documented limitations, and human approval | [Open case](cases/2026-06-soc-017-ai-assisted-soc-workflow-review/) |

### What This Series Demonstrates

- SIEM alert triage using Microsoft Sentinel.
- Endpoint investigation using Microsoft Defender EDR context.
- PowerShell analysis based on documented command and process evidence.
- Identity and Azure sign-in risk review.
- Detection tuning focused on false-positive reduction without weakening review controls.
- Incident report writing for technical and executive audiences.
- Responsible AI-assisted SOC workflow in which the analyst validates outputs and retains the approval boundary for decisions and actions.

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
