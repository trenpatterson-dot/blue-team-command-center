# SOC IAM Identity Alert Investigation

## Overview

This case documents a SOC/IAM investigation of identity-based authentication activity in a controlled lab environment. The investigation reviews failed logon events, successful logon context, local account policy, identity event logic, and public/private evidence handling before reaching a triage decision.

The case is written for SOC Analyst, Information Security Analyst, Security Operations Analyst, IAM Analyst, and Identity Security Analyst portfolio review.

## What This Case Demonstrates

- Identity-based alert triage
- Failed-logon and authentication analysis
- Correlation between failed and successful authentication events
- Account lockout and password policy review
- IAM control thinking around MFA, least privilege, and conditional access
- Analyst documentation and handoff writing
- Public/private evidence handling for portfolio-safe reporting

## Scenario

An identity-related alert indicates repeated failed authentication activity. The analyst reviews Windows Security authentication events, checks whether a successful logon occurred in the same investigation context, reviews account policy, documents the event logic used for triage, and recommends identity-focused controls.

## Tools / Data Sources

This case uses sanitized lab evidence from:

- Windows Event Viewer
- Windows Security Event ID 4625 failed logon review
- Windows Security Event ID 4624 successful logon context review
- Local account policy review using `net accounts`
- Manual investigation notes
- Sanitized public screenshots

No real employer logs, private user data, customer data, credentials, tokens, or sensitive production information are included.

## Investigation Summary

The investigation focused on answering:

1. What identity/account context was involved?
2. How many failed authentication attempts occurred?
3. Was there a successful logon review for correlation?
4. Was account lockout or password policy context available?
5. Were there signs of brute force, password spraying, misconfiguration, normal user error, or lab-generated activity?
6. What IAM controls would reduce risk in a production environment?

## Key Findings

- Windows Security logs were filtered for Event ID 4625, and six failed logon events were observed.
- Windows Security logs were also reviewed for Event ID 4624 to provide successful logon context.
- Local account policy was reviewed with `net accounts`, including lockout threshold, lockout duration, observation window, and password policy context.
- The activity is controlled lab evidence. No confirmed compromise was identified.
- In a production SOC/IAM environment, repeated failed logons would require correlation against account privilege, source device/IP, MFA status, lockout behavior, and any successful logon after the failures.

Detailed findings are documented in `docs/findings.md`.

## Triage Decision

Controlled lab evidence / No confirmed compromise.

The failed logon activity was generated in a lab environment to demonstrate identity alert investigation workflow. The case should be treated as portfolio-safe SOC/IAM practice evidence, not as a real compromise investigation.

## Evidence

Public screenshots are stored in:

`evidence/screenshots-public/`

Private notes and raw artifacts are stored locally only in:

`evidence/raw-notes/`

## Public / Private Boundary

This repository is intended to be GitHub-safe.

Public:

- Sanitized screenshots
- Investigation summary
- Findings
- Queries/checklists
- README

Private/local only:

- Raw logs
- Real usernames
- Real emails
- Real IP addresses
- Employer/customer data
- LinkedIn drafts
- Supervisor-agent outputs

## Screenshot Evidence

| Screenshot | Purpose |
|---|---|
| `01-project-folder-structure` | Shows the project structure used for the investigation. |
| `02-event-viewer-security-filter-4625` | Shows Windows Security logs filtered for failed logon Event ID 4625. |
| `03-failed-login-event-details-redacted` | Shows redacted Event ID 4625 failed logon details. |
| `04-successful-login-context-4624-filter` | Shows successful logon Event ID 4624 review for correlation. |
| `05-account-policy-or-lockout-context` | Shows local account lockout and password policy context from `net accounts`. |
| `06-query-notes-failed-login-analysis` | Shows the identity/security event IDs used during triage. |
| `07-investigation-timeline` | Shows the investigation timeline and analyst notes. |
| `08-public-private-boundary-check` | Shows the public/private evidence boundary. |

## Supporting Files

- `docs/investigation.md` - investigation timeline, evidence review, analyst assessment, and triage decision
- `docs/findings.md` - SOC/IAM findings, risk context, and recommendations
- `docs/screenshot-checklist.md` - screenshot status and public evidence requirements
- `queries/failed-login-analysis-queries.md` - identity/security event IDs and investigation questions
- `queries/iam-triage-checklist.md` - reusable IAM triage checklist
- `HANDOFF.md` - case status and safe handoff notes

## Project Status

Portfolio-ready case documentation drafted with sanitized lab evidence. Manual reviewer should still inspect screenshots before publishing.
