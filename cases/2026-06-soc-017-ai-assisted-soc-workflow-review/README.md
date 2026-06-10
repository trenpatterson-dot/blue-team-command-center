# SOC-017 AI-Assisted SOC Workflow Review

## Overview
This case documents a simulated AI-assisted SOC workflow review. The scenario focuses on how a SOC analyst can use AI to help organize alert information, draft an evidence checklist, suggest MITRE ATT&CK mapping, and prepare an incident report draft while keeping the final decision under human analyst control.

The purpose of this case is to demonstrate responsible AI use in security operations. AI is treated as a support tool, not as the final decision maker.

## Objective
The objective is to review a suspicious security alert workflow where AI assistance is used to support analyst documentation.

This case specifically reviews:
- AI-assisted alert summary drafting
- Evidence checklist creation
- MITRE ATT&CK mapping support
- Incident report draft support
- Analyst validation of AI output
- Human approval boundary
- Final analyst determination

## Tools Used
- Simulated SOC alert evidence
- AI-assisted documentation workflow
- Microsoft Sentinel-style alert concepts
- Microsoft Defender-style endpoint alert concepts
- KQL-style query review
- MITRE ATT&CK mapping
- Human analyst validation checklist
- Blue Team Command Center documentation workflow

## Environment / Lab Setup
This was a simulated SOC workflow review. No production environment was accessed. The evidence was created to model how a SOC analyst might use AI assistance while reviewing alert evidence.

Evidence reviewed:
- evidence/security-alert-summary.md
- evidence/correlated-events.csv
- evidence/command-history.md
- queries/correlation-review.kql
- ai-review/ai-assisted-summary-draft.md
- ai-review/analyst-validation-checklist.md
- ai-review/ai-limitations.md
- report/final-analyst-determination.md
- report/incident-report-draft.md
- notes/investigation-notes.md

## Investigation Steps
1. Reviewed the simulated security alert summary.
2. Reviewed correlated identity and endpoint events.
3. Used AI assistance to draft an initial alert summary.
4. Used AI assistance to build an evidence checklist.
5. Reviewed AI-suggested MITRE ATT&CK mapping.
6. Validated the AI output against the evidence.
7. Corrected unsupported or unclear AI statements.
8. Documented AI limitations and human approval boundaries.
9. Created a final analyst determination.
10. Documented response recommendations.

## Key Findings
- The alert involved suspicious sign-in activity and suspicious PowerShell execution.
- AI assistance helped organize the alert narrative and evidence checklist.
- Human review was required to verify the timeline, evidence, and MITRE mapping.
- Unsupported assumptions were not accepted as final findings.
- The analyst made the final determination based only on documented evidence.
- AI did not make the final security decision.

## Security Impact
AI can help analysts summarize evidence and draft documentation faster, but it can also introduce unsupported assumptions if the output is not validated.

A responsible AI-assisted SOC workflow requires evidence checking, human review, clear limitations, and documented analyst approval. This helps prevent overreliance on AI-generated conclusions.

## MITRE ATT&CK Mapping
- T1110 - Brute Force
- T1078 - Valid Accounts
- T1059.001 - PowerShell
- T1105 - Ingress Tool Transfer
- T1027 - Obfuscated Files or Information

## Recommendations
- Use AI to summarize and organize evidence, not to make final security decisions.
- Validate every AI-generated claim against source evidence.
- Keep a human analyst approval step before escalation.
- Document what AI helped with and what the analyst verified.
- Remove unsupported assumptions from AI-generated drafts.
- Maintain a clear incident timeline based on evidence.
- Use AI-generated MITRE mapping as a starting point only.
- Keep final disposition human-approved and evidence-bound.

## Portfolio Note
This case demonstrates AI-assisted SOC workflow skills including alert summarization, evidence checklist creation, MITRE ATT&CK mapping support, incident report drafting, human-in-the-loop validation, and responsible AI use in cybersecurity operations.
