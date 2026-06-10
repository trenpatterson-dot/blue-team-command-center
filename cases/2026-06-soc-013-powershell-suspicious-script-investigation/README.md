# SOC-013 PowerShell Suspicious Script Investigation

## Overview
This case documents a simulated SOC investigation of suspicious PowerShell script activity on a Windows endpoint. The scenario focuses on PowerShell execution with unusual command-line arguments, script download behavior, and suspicious process activity.

The purpose of this case is to demonstrate PowerShell-focused triage skills: reviewing command history, identifying suspicious script behavior, documenting evidence, mapping activity to MITRE ATT&CK, and recommending response actions.

## Objective
The objective is to investigate suspicious PowerShell activity, determine whether the script behavior appears malicious or unauthorized, identify affected host and user context, and document containment and remediation recommendations.

This case specifically reviews:
- PowerShell command-line activity
- Script block style evidence
- Suspicious download behavior
- Process execution patterns
- MITRE ATT&CK mapping
- Analyst triage notes

## Tools Used
- PowerShell
- Windows endpoint investigation concepts
- Simulated PowerShell event evidence
- CSV evidence review
- KQL-style query documentation
- MITRE ATT&CK mapping
- Blue Team Command Center documentation workflow

## Environment / Lab Setup
This was a simulated Windows endpoint investigation. No live production system was accessed. The evidence was created to model PowerShell telemetry that a SOC analyst may review through EDR, SIEM, Windows event logs, or Microsoft Defender Advanced Hunting.

Evidence reviewed:
- evidence/powershell-alert-summary.md
- evidence/powershell-events.csv
- evidence/command-history.md
- queries/powershell-suspicious-script-hunt.kql
- notes/investigation-notes.md

## Investigation Steps
1. Reviewed the PowerShell alert summary.
2. Identified the affected host and user.
3. Reviewed suspicious PowerShell command-line activity.
4. Checked for download behavior and encoded or bypass-style arguments.
5. Compared suspicious activity against normal PowerShell usage.
6. Reviewed KQL-style hunting logic.
7. Mapped the activity to MITRE ATT&CK.
8. Documented findings, impact, and response recommendations.

## Key Findings
- The affected device was WIN-WS-022.
- The affected user was analyst3.
- PowerShell executed with ExecutionPolicy Bypass.
- The command referenced a script from the Downloads folder.
- The evidence included a suspicious web request pattern.
- The behavior may indicate unauthorized script execution or early-stage payload activity.

## Security Impact
Suspicious PowerShell activity can indicate attempted malware execution, unauthorized automation, credential access preparation, payload download, or post-exploitation scripting. PowerShell is commonly abused because it is built into Windows and can execute commands without requiring external tools.

If the activity is malicious, an attacker may attempt to download additional payloads, run discovery commands, establish persistence, or move laterally.

## MITRE ATT&CK Mapping
- T1059.001 - Command and Scripting Interpreter: PowerShell
- T1105 - Ingress Tool Transfer
- T1027 - Obfuscated Files or Information
- T1204.002 - User Execution: Malicious File

## Recommendations
- Review the full endpoint timeline around the PowerShell execution.
- Confirm whether the script was expected or approved.
- Inspect the referenced script path and file hash.
- Block or investigate suspicious network indicators.
- Isolate the endpoint if malicious activity is suspected.
- Reset credentials if user compromise is suspected.
- Tune detection logic for PowerShell download and bypass patterns.
- Document the triage decision and escalation status.

## Portfolio Note
This case demonstrates SOC analyst skills including PowerShell investigation, endpoint triage, suspicious script analysis, KQL-style detection logic, MITRE ATT&CK mapping, and incident documentation.
