# SOC-020 — Logic Apps Automated Alert Triage

## Overview

This project demonstrates how Microsoft Sentinel alert investigations can be enhanced through security automation using Logic Apps and PowerShell.

The objective was to reduce repetitive analyst tasks while maintaining analyst control over investigation outcomes.

Automation collected initial evidence, generated investigation artifacts, and prepared analyst review materials. Final incident decisions remained the responsibility of the security analyst.

---

## Scenario

A Microsoft Sentinel alert was generated for suspicious PowerShell activity.

A Logic Apps workflow was used to automate:

- Alert enrichment
- Host information collection
- Investigation checklist generation
- Initial incident documentation

The analyst then reviewed the collected evidence and determined whether escalation was required.

---

## Skills Demonstrated

- Microsoft Sentinel
- Logic Apps
- PowerShell
- Security Automation
- Incident Response
- Alert Triage
- MITRE ATT&CK
- Investigation Documentation
- Security Operations Center (SOC)
- Human-in-the-Loop Security Workflows

---

## MITRE ATT&CK Mapping

| Technique | Description |
|------------|------------|
| T1059.001 | PowerShell |

---

## Investigation Workflow

1. Sentinel alert generated
2. Logic App triggered
3. Alert details collected
4. Host information collected
5. PowerShell activity reviewed
6. Investigation checklist generated
7. Analyst review completed
8. Incident disposition documented

---

## Evidence Collected

### Host Information

- Hostname: TREN
- Windows Build: 26200

### PowerShell Events

Reviewed PowerShell operational logs.

Observed Event IDs:

- 400
- 403
- 600

No suspicious PowerShell execution activity was identified.

### Running Processes

Reviewed active processes on the endpoint.

No malicious or unauthorized processes were identified during the investigation.

---

## Findings

PowerShell operational logs showed normal engine startup and shutdown activity.

Running process analysis identified expected user applications and standard Windows processes.

No evidence of malicious PowerShell execution, persistence activity, or unauthorized process execution was identified.

The alert was determined to be informational and did not require escalation.

---

## Automation Benefits

This workflow demonstrates how Logic Apps can assist analysts by:

- Reducing manual triage effort
- Standardizing investigations
- Generating repeatable evidence collection workflows
- Improving documentation consistency

Automation accelerated the investigation process while preserving analyst oversight and decision-making authority.

---

## AI-Assisted SOC Considerations

AI-assisted workflows may support:

- Alert summarization
- Evidence checklist generation
- MITRE ATT&CK mapping
- Investigation note drafting

All AI-generated output requires analyst validation before incident closure.

---

## Project Structure

SOC-020-Logic-Apps-Automated-Alert-Triage

├── README.md

├── INVESTIGATION.md

├── EXECUTIVE-SUMMARY.md

├── LOGIC-APP-WORKFLOW.md

├── EVIDENCE

├── COMMANDS

└── SCREENSHOTS

---

## Key Takeaway

Security automation can reduce analyst workload and improve consistency, but final incident decisions should remain under human analyst control.