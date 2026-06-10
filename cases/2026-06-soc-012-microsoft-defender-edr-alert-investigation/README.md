# SOC-012 Microsoft Defender EDR Alert Investigation

## Overview
This case documents a simulated Microsoft Defender for Endpoint EDR alert investigation. The scenario focuses on suspicious PowerShell activity launched from a user context on a Windows endpoint.

The purpose of this case is to demonstrate an endpoint alert investigation workflow: alert review, process chain analysis, device timeline review, command-line inspection, MITRE ATT&CK mapping, containment decision-making, and remediation recommendations.

## Objective
The objective is to investigate a medium-severity EDR alert, determine whether the process activity appears suspicious, identify the affected device and user, document endpoint indicators, and recommend response actions.

This case specifically reviews:
- Suspicious PowerShell execution
- Parent and child process relationships
- Encoded or unusual command-line activity
- Affected endpoint and user context
- MITRE ATT&CK mapping
- Containment and remediation actions

## Tools Used
- Microsoft Defender for Endpoint concepts
- Advanced Hunting KQL-style query documentation
- Simulated endpoint process event evidence
- CSV evidence review
- MITRE ATT&CK mapping
- Blue Team Command Center documentation workflow

## Environment / Lab Setup
This was a simulated Microsoft Defender for Endpoint EDR investigation. No real Microsoft Defender tenant was accessed. The evidence was created to model the type of endpoint process activity a SOC analyst may review in Microsoft Defender for Endpoint device timeline and Advanced Hunting.

Evidence reviewed:
- evidence/defender-alert-summary.md
- evidence/device-process-events.csv
- evidence/command-history.md
- queries/defender-suspicious-powershell.kql
- notes/investigation-notes.md

## Investigation Steps
1. Reviewed the Defender-style alert summary.
2. Identified the affected device and user.
3. Reviewed suspicious PowerShell execution details.
4. Analyzed parent and child process relationships.
5. Checked command-line arguments for encoded or suspicious behavior.
6. Reviewed KQL-style hunting logic.
7. Mapped the activity to MITRE ATT&CK.
8. Documented security impact and response recommendations.

## Key Findings
- The affected device was WIN-WS-014.
- The affected user was analyst3.
- PowerShell was launched with an encoded command argument.
- The parent process was winword.exe, which may indicate suspicious script execution from an Office document.
- The process chain included winword.exe spawning powershell.exe.
- The behavior is consistent with suspicious script execution and possible malicious document activity.

## Security Impact
Suspicious PowerShell execution from an Office parent process may indicate attempted malware execution, phishing payload activity, or post-exploitation scripting. Encoded PowerShell can be used to hide command intent and bypass simple detection methods.

If the activity is malicious, an attacker may attempt to download payloads, execute commands, establish persistence, or move laterally from the affected endpoint.

## MITRE ATT&CK Mapping
- T1059.001 - Command and Scripting Interpreter: PowerShell
- T1204.002 - User Execution: Malicious File
- T1566.001 - Phishing: Spearphishing Attachment
- T1027 - Obfuscated Files or Information

## Recommendations
- Isolate the affected endpoint if malicious activity is suspected.
- Review the full device timeline around the alert.
- Collect the suspicious command line and related process events.
- Check whether PowerShell downloaded or executed additional payloads.
- Review email or document source if winword.exe was involved.
- Reset user credentials if compromise is suspected.
- Tune Defender detections for suspicious Office-to-PowerShell process chains.
- Document the triage decision and escalation status.

## Portfolio Note
This case demonstrates SOC analyst skills including Microsoft Defender EDR alert triage, endpoint process analysis, PowerShell investigation, Advanced Hunting KQL-style documentation, MITRE ATT&CK mapping, incident documentation, and remediation planning.
