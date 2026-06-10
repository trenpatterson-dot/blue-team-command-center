# Incident Report Draft - AI-Assisted SOC Workflow

## Summary
A suspicious security alert workflow was reviewed involving failed sign-in activity for analyst3@contoso.local and suspicious PowerShell activity on WIN-WS-022. AI assistance was used to draft the initial summary, organize evidence, and suggest MITRE ATT&CK mapping.

The human analyst validated the evidence, removed unsupported assumptions, and made the final determination.

## Evidence Reviewed
- Security alert summary
- Correlated event timeline
- KQL-style correlation query
- AI-assisted summary draft
- Analyst validation checklist
- AI limitations note

## Timeline
- 15:01 UTC - Failed sign-ins observed from 203.0.113.88.
- 15:04 UTC - MFA not satisfied during failed attempts.
- 15:11 UTC - PowerShell executed with ExecutionPolicy Bypass.
- 15:12 UTC - Script path from Downloads folder observed.
- 15:13 UTC - PowerShell web request to 203.0.113.77 observed.
- 15:18 UTC - AI draft validated against source evidence.
- 15:25 UTC - Human analyst approved final determination.

## Key Findings
- Suspicious identity activity was observed.
- Suspicious endpoint activity was observed.
- AI helped organize the evidence but did not decide the final outcome.
- Human validation was required before escalation.

## MITRE ATT&CK Mapping
- T1110 - Brute Force
- T1078 - Valid Accounts
- T1059.001 - PowerShell
- T1105 - Ingress Tool Transfer
- T1027 - Obfuscated Files or Information

## Final Analyst Recommendation
Escalate for endpoint review, identity verification, and containment consideration. Do not declare confirmed compromise without additional evidence.
