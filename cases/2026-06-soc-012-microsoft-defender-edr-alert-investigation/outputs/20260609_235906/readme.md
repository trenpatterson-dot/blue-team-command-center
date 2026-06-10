# Microsoft Defender EDR Alert Investigation (2026-06-soc-012)

## Overview
This investigation is a response to a simulated phishing attack detected by Microsoft Defender EDR on a standalone platform. The objective was to identify the nature of the threat, affected endpoints, and perform containment and remediation actions.

## Objective
The primary goal of this exercise was to investigate a potential security breach caused by a simulated phishing attack, using Microsoft Defender EDR to gather evidence and perform analysis.

## Tools Used
- PowerShell

## Environment / Lab Setup
This investigation took place on a standalone platform with Microsoft Defender EDR installed. The lab type is classified as a phishing exercise.

## Investigation Steps
1. Reviewed the Defender-style alert summary.
2. Identified the affected device and user.
3. Analyzed suspicious PowerShell execution details.
4. Examined parent and child process relationships.
5. Performed additional analysis as needed to confirm findings and contain the threat.

## Key Findings
- Defender-style alert summary
- Simulated endpoint process events
- Advanced Hunting KQL-style query
- Command history
- Affected endpoint and user context

## Security Impact
The simulated phishing attack successfully bypassed email filters, leading to potential data exfiltration or system compromise. Containment and remediation actions were taken to minimize the impact.

## MITRE ATT&CK Mapping
- T1027: Exploit Public-Facing Application (Web Application)
- T1059.001: Command and Scripting Interpreter: PowerShell
- T1204.002: User Execution (PowerShell)
- T1566.001: Scheduled Task/Job: Windows Task Scheduler
