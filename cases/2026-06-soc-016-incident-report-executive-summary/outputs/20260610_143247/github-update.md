# SOC-016 Incident Report and Executive Summary Case

## Overview
This case documents a simulated SOC incident report based on suspicious PowerShell activity on a Windows endpoint. The goal is to convert technical alert evidence into a clear analyst report that can be understood by technical teams, management, and incident response stakeholders.

This case builds on the prior PowerShell and Defender-style investigations by focusing on communication, evidence organization, timeline development, impact summary, and recommended response actions.

## Objective
The objective is to create a complete incident report package for a suspicious PowerShell execution event.

This case specifically reviews:
- Incident summary
- Affected user and device
- Timeline of activity
- Evidence supporting the finding
- Security impact
- MITRE ATT&CK mapping
- Containment and remediation recommendations
- Executive summary writing

## Tools Used
- PowerShell evidence review
- Simulated endpoint process evidence
- Incident report writing
- Timeline analysis
- MITRE ATT&CK mapping
- Blue Team Command Center documentation workflow

## Environment / Lab Setup
This was a simulated SOC incident reporting exercise. No production environment was accessed. The evidence models endpoint activity that a SOC analyst may review after an EDR or SIEM alert.

Evidence reviewed:
- evidence/incident-summary.md
- evidence/timeline.csv
- evidence/key-evidence.md
- evidence/command-history.md
- report/incident-report.md
- report/executive-summary.md
- notes/analyst-notes.md

## Investigation Steps
1. Reviewed the simulated incident summary.
2. Identified the affected endpoint and user.
3. Reviewed the event timeline.
4. Documented key evidence supporting the suspicious activity.
5. Assessed potential security impact.
6. Mapped the behavior to MITRE ATT&CK.
7. Created an analyst incident report.
8. Created a short executive summary.
9. Documented containment and remediation recommendations.

## Key Findings
- Suspicious PowerShell activity occurred on device WIN-WS-022.
- The affected user was analyst3.
- PowerShell executed with ExecutionPolicy Bypass.
- The command referenced a script from the user's Downloads folder.
- The activity included a suspicious web request to 203.0.113.77.
- A child cmd.exe process was observed after PowerShell execution.
- The evidence supports escalation for endpoint review and possible containment.

## Security Impact
Suspicious PowerShell activity can indicate unauthorized script execution, payload download, phishing-related execution, or early-stage endpoint compromise.

If malicious, this activity could allow an attacker to download additional tooling, execute commands, collect information, establish persistence, or move laterally. Clear incident reporting helps responders understand what happened, what evidence supports the finding, and what action should happen next.

## MITRE ATT&CK Mapping
- T1059.001 - Command and Scripting Interpreter: PowerShell
- T1105 - Ingress Tool Transfer
- T1027 - Obfuscated Files or Information
- T1204.002 - User Execution: Malicious File

## Recommendations
- Review full endpoint timeline around the PowerShell execution.
- Validate whether the script was approved or expected.
- Investigate the source and contents of the script.
- Review network activity related to 203.0.113.77.
- Isolate the endpoint if malicious activity is suspected.
- Collect related artifacts for further analysis.
- Reset user credentials if compromise is confirmed.
- Tune detections for PowerShell download and bypass behavior.
- Document final disposition and lessons learned.

## Portfolio Note
This case demonstrates SOC analyst communication skills including incident reporting, executive summary writing, evidence organization, timeline development, MITRE ATT&CK mapping, and remediation planning.
