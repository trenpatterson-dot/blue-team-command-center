# HANDOFF - SOC IAM Identity Alert Investigation

## Project Name

soc-iam-identity-alert-investigation

## Status

Portfolio documentation updated / Manual screenshot review still recommended before publishing

## Current Step

Review the completed SOC/IAM hybrid investigation case for public portfolio use. The case focuses on identity-based alert triage, failed-logon analysis, successful-logon correlation, account policy review, access-control concepts, and analyst documentation.

## Project Goal

Create a portfolio case that demonstrates practical identity security investigation, authentication event review, IAM control awareness, alert triage, logging, and clear SOC documentation.

## Career Target

- SOC Analyst
- Information Security Analyst
- Security Operations Analyst
- IAM Analyst
- Identity Security Analyst

## Scenario

A security analyst receives an identity-based alert involving failed authentication activity. The analyst reviews Windows Security log events, correlates failed and successful authentication context, checks account policy, documents findings, and recommends IAM-focused mitigations.

## Public Files

- README.md
- docs/investigation.md
- docs/findings.md
- docs/screenshot-checklist.md
- queries/failed-login-analysis-queries.md
- queries/iam-triage-checklist.md
- evidence/screenshots-public/

## Local-Only / Private Files

- evidence/raw-notes/
- outputs/
- LinkedIn draft files
- Any screenshots containing real usernames, emails, hostnames, IP addresses, tenant names, employer data, or sensitive system details

## GitHub-Safe Boundary

Public documentation must use sanitized or lab-generated evidence only. No real employer logs, customer data, private identity data, tokens, credentials, email addresses, internal system names, or sensitive IP addresses should be published.

## Screenshot Evidence

Screenshot status is tracked in `docs/screenshot-checklist.md`.

Current public screenshot set:

- 01-project-folder-structure
- 02-event-viewer-security-filter-4625
- 03-failed-login-event-details-redacted
- 04-successful-login-context-4624-filter
- 05-account-policy-or-lockout-context
- 06-query-notes-failed-login-analysis
- 07-investigation-timeline
- 08-public-private-boundary-check

## Completed So Far

- Folder structure created
- GitHub-safe private/public boundary documented
- Initial project documentation created
- Screenshot evidence captured in `evidence/screenshots-public/`
- Windows Security Event ID 4625 failed logon activity reviewed
- Six failed logon events observed in the lab evidence
- Windows Security Event ID 4624 successful logon context reviewed
- Local account policy reviewed with `net accounts`
- Query/event ID logic documented for identity triage
- Triage decision documented as controlled lab evidence / no confirmed compromise
- Outputs created in `outputs/20260525_124630`
- LinkedIn draft remains local-only inside `outputs/`

## Remaining Manual Review

Before publishing, manually confirm that public screenshots do not show real usernames, emails, hostnames, IP addresses, tenant names, credentials, tokens, employer data, or private desktop/browser content.

## Handoff Notes

Use this project folder as the source:

`C:\Users\trenp\blue-team-command-center\cases\2026-05-25-soc-iam-identity-alert-investigation`

Reviewer should:

1. Review README.md, docs/investigation.md, docs/findings.md, queries/, and evidence/screenshots-public/.
2. Treat evidence/raw-notes/ and outputs/ as local-only/private.
3. Keep LinkedIn drafts local only.
4. Preserve the investigation facts, timestamps, indicators, findings, and conclusion.
5. Keep the SOC/IAM framing around failed logons, authentication analysis, access control, MFA, least privilege, account lockout, and identity alert triage.
6. Confirm the public/private evidence boundary before publishing.
