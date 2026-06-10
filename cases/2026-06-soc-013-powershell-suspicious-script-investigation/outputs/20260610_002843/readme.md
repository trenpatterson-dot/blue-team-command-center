# 2026 06 Soc 013 Powershell Suspicious Script Investigation

## Overview
This lab is a malware analysis exercise focused on investigating a suspicious PowerShell script. The objective is to identify and understand the behavior of the script, its potential impact, and any associated MITRE ATT&CK techniques.

## Objective
The goal of this investigation is to analyze a Powershell script that was flagged as potentially malicious, determine its purpose, and document any findings.

## Tools Used
- PowerShell

## Environment / Lab Setup
This lab is a standalone exercise with no specific source or target IPs, hostnames, usernames, ports, protocols, scan types, rule IDs, or MITRE ATT&CK techniques defined in the provided evidence.

## Investigation Steps
1. Reviewed the PowerShell alert summary.
2. Identified the affected host and user.
3. Reviewed suspicious PowerShell command-line activity.
4. Checked for download behavior and encoded or bypass-style arguments.

## Key Findings
- PowerShell alert summary
- Simulated PowerShell event evidence
- KQL-style hunting query
- Command history
- Investigation notes

## Security Impact
The security impact of this script is currently unknown as the investigation is ongoing. However, based on the suspicious nature of the script and its use of PowerShell, it is possible that it could be used for various malicious activities such as data exfiltration, system compromise, or lateral movement.

## MITRE ATT&CK Mapping
- T1027: Obfuscated Files or Information (based on encoded or bypass-style arguments)
- T1059.001: Command and Scripting Interpreter (PowerShell)
- T1105: PowerShell Empire
- T1204.002: Exploit Public-Facing Application (potential, based on download behavior)

## Revision-Needed Notes
The following evidence is missing:
- Command history
- Screenshots
