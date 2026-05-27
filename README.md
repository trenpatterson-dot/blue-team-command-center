# Blue Team Command Center

Blue Team Command Center is a portable, Markdown-first workbench for SOC and blue-team analysis. It helps an analyst intake cases, organize evidence notes, follow playbooks, map work to common frameworks, draft reports, and prepare decision-support summaries.

The system is designed to move between computers as a normal folder. The core files are Markdown and do not require Python, administrator rights, internet access, cloud services, or installed tools.

## What This System Does

- Provides repeatable templates for alert triage, incident reporting, threat hunting, phishing analysis, detection engineering, vulnerability remediation, audit findings, executive summaries, and lessons learned.
- Provides safe investigation playbooks for failed login, phishing, suspicious PowerShell, malware alert triage, and account compromise scenarios.
- Includes completed v0.3 workflow chains for malware alert triage and account compromise, with related checklists, playbooks, practice cases, and review artifacts.
- Separates known facts from analyst interpretation, assumptions, and missing information.
- Captures recommended next steps without taking action on behalf of the analyst.
- Supports copy and paste ready reporting into approved systems.

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
