# HANDOFF: SOC-020 Microsoft Logic Apps SOC Automation

## Project

SOC-020: Microsoft Logic Apps SOC Automation

## Status

Documentation complete. Analyst review required before the case is published or used as implementation guidance.

## Goal

Present a recruiter-ready Microsoft SOC automation case showing how Logic Apps can support Microsoft Sentinel or Defender XDR alert triage without taking final decision authority away from the analyst.

## Scenario

A simulated Defender XDR alert for suspicious PowerShell download behavior is available in Microsoft Sentinel. The Logic Apps design extracts key alert fields, prepares an evidence checklist, notifies the analyst, and drafts an incident note.

## Deliverables

- [Case README](README.md)
- [ELI10 summary](outputs/eli10.md)
- [Technical summary](outputs/technical.md)
- [Executive summary](outputs/executive-summary.md)
- [LinkedIn draft](outputs/linkedin.md)
- [OneNote notes](outputs/onenote.md)

## Workflow Handoff

1. Confirm the source alert and incident reference.
2. Review normalized fields for missing or incorrect values.
3. Use the prepared checklist to review source telemetry.
4. Validate the candidate MITRE ATT&CK mapping.
5. Apply documented escalation criteria.
6. Replace the draft language with evidence-based analyst findings.
7. Decide whether to close, escalate, request authorized containment, or continue evidence collection.

## Analyst Review Questions

1. Does the source alert contain the user, host, IP, timestamp, and alert ID shown in the draft?
2. Is the PowerShell activity confirmed in source telemetry?
3. Does the available process or command-line evidence support `T1059.001`?
4. Are there related alerts, sign-ins, devices, or indicators?
5. Are critical fields missing or contradictory?
6. Does the case meet documented escalation criteria?
7. Is containment required, and who is authorized to approve it?
8. What is the final disposition and rationale?

## Manual Fallback

If the Logic Apps workflow fails, the analyst should use the source Sentinel or Defender XDR alert, manually record the core fields, complete the evidence checklist, notify the appropriate queue, and document the final decision.

Automation failure must not be treated as an alert disposition.

## Approval Boundary

The workflow package is advisory and draft-only. A human analyst or authorized incident owner must approve final severity, disposition, escalation, containment, closure, and external communication.

## Evidence Boundary

This handoff describes a lab/case-study design using simulated evidence. It does not claim production SOC employment, tenant ownership, enterprise authority, live connector deployment, or access to customer data.
