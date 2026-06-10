# AI Limitations and Human Review Boundary

AI Assistance Used For:
- Drafting an alert summary
- Organizing an evidence checklist
- Suggesting possible MITRE ATT&CK mappings
- Creating an incident report draft structure

AI Not Used For:
- Final security determination
- Confirming compromise
- Declaring data loss
- Approving containment
- Closing the incident

Known AI Risks:
- AI may overstate conclusions.
- AI may assume compromise without proof.
- AI may suggest MITRE techniques that are related but not directly supported.
- AI may summarize evidence incorrectly if source data is incomplete.
- AI may miss important context from logs or environment details.

Human Analyst Controls:
- Validate each claim against source evidence.
- Remove unsupported conclusions.
- Confirm MITRE mapping manually.
- Keep final decision evidence-bound.
- Document that AI did not make the final determination.

Final Boundary Statement:
AI assisted with documentation and organization only. The human analyst reviewed the evidence and approved the final determination.
