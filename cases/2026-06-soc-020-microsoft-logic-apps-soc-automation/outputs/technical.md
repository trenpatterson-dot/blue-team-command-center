# SOC-020 Technical Summary

## Case

Microsoft Logic Apps SOC Automation

## Objective

Design a documentation-first SOC automation workflow that supports Microsoft Sentinel and Defender XDR alert triage while preserving human approval for incident response decisions.

## Simulated Alert

- Alert: Suspicious PowerShell Download Behavior
- Source: Microsoft Defender XDR
- Incident platform: Microsoft Sentinel
- Severity: Medium
- User: `alex.morgan@example.invalid`
- Host: `LAB-WS-020`
- Source IP: `198.51.100.24`
- Timestamp: `2026-06-11T14:22:31Z`
- Candidate MITRE ATT&CK mapping: `T1059.001`, pending analyst validation

## Workflow

1. Receive a new Sentinel incident or Defender XDR alert.
2. Extract alert ID, title, severity, timestamp, user, host, IP, and source reference.
3. Normalize missing values without guessing.
4. Prepare an evidence collection checklist.
5. Notify the assigned analyst.
6. Create a draft incident note.
7. Stop at the human approval checkpoint.
8. Allow the analyst to close, escalate, request authorized containment, or continue investigation.

## Inputs

- Alert metadata
- User, host, and IP entities
- Source product
- Alert description
- Incident or evidence reference

## Outputs

- Normalized context
- Evidence checklist
- Analyst notification
- Draft incident note
- Workflow status or failure notice

## Failure Controls

- Missing fields are labeled `Not provided`.
- Enrichment failures are marked incomplete.
- Duplicate triggers are correlated by alert or incident ID.
- Connector or notification failures route to the workflow owner.
- The manual alert triage process remains available.
- Automation failure never changes the incident determination.

## Security and Governance

- Least-privilege connectors
- Approved identity and secret management
- Data minimization
- Workflow logging and change control
- Protected notification channels
- Human approval before escalation, containment, closure, or external communication

## Decision Boundary

Logic Apps performs collection, formatting, notification, and draft documentation. The human analyst validates evidence, confirms MITRE ATT&CK mapping, applies escalation criteria, and makes the final incident response decision.

## Evidence Boundary

This is a simulated lab/case study. It was not deployed to a production tenant and does not claim enterprise authority, tenant ownership, production SOC employment, or access to live customer data.
