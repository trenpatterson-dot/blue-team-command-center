# SOC-020 OneNote Notes

## Project

SOC-020: Microsoft Logic Apps SOC Automation

## Main Goal

Use Logic Apps to support a repeatable Microsoft Sentinel or Defender XDR analyst workflow without allowing automation to make the final incident determination.

## What I Practiced

- Defining a SOC automation objective
- Mapping a Sentinel and Defender XDR alert workflow
- Identifying minimum alert inputs
- Normalizing missing data
- Preparing an evidence checklist
- Designing analyst notifications
- Drafting incident documentation
- Defining escalation criteria
- Handling connector, enrichment, and notification failures
- Applying least privilege and governance controls
- Preserving a human approval checkpoint

## Workflow Memory Aid

1. Alert created
2. Logic Apps triggered
3. Fields extracted
4. Evidence checklist prepared
5. Analyst notified
6. Draft incident note created
7. Analyst reviews source evidence
8. Analyst decides close, escalate, contain, or continue

## Simulated Evidence

- Alert ID: `LAB-ALERT-SOC020-001`
- User: `alex.morgan@example.invalid`
- Host: `LAB-WS-020`
- IP: `198.51.100.24`
- Alert: Suspicious PowerShell Download Behavior
- Candidate ATT&CK technique: `T1059.001`, pending validation

## Main Lesson

Automation should handle repeatable collection and formatting. The analyst should handle interpretation, confidence, final severity, MITRE ATT&CK validation, escalation, containment approval, and closure.

## Evidence Boundary

This is a lab/case study using simulated evidence. It does not represent a production tenant, live customer data, enterprise authority, or production SOC employment.
