# Project Status

## Current Status

Blue Team Command Center has a working v0.2 Markdown-first SOC analyst workflow.

The project currently supports:

- Portable repo structure
- Company-safe usage guidance
- Public/private boundary rules
- Reusable case template
- Case copy workflow
- Failed login workflow
- Phishing triage workflow
- Suspicious PowerShell workflow
- Sanitized screenshot workflow
- SOC report templates
- Investigation playbooks
- Framework mapping notes
- Safety checklists
- Command cheatsheet

## Completed

- Initial scaffold created
- Git initialized on `main`
- Safety docs added
- Operating modes added
- Case workflow added
- Screenshot and outputs handling added
- Reusable `cases/_template/` added
- Failed login workflow complete
- Phishing workflow complete
- Suspicious PowerShell workflow complete
- Sanitized screenshot workflow complete

## Current Practice Cases

- `cases/2026-05-23-failed-login-practice-case`
- `cases/2026-05-24-phishing-triage-practice-case`
- `cases/2026-05-25-suspicious-powershell-practice-case`

## Next Upgrades

1. Review v0.2 documentation fixes.
2. Add GitHub/public-safe version planning later.
3. Add optional scripts only after the Markdown workflow is stable and human approval gates are clear.

## Safety Posture

This project is documentation-first.

It does not perform destructive actions.

Human approval is required for blocking, disabling, resetting, deleting, isolating, contacting users, escalating, closing incidents, publishing reports, or sending external messages.
