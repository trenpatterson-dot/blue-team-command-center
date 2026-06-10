## Overview

The investigation focused on a suspected malicious PowerShell script within the context of the 2026 06 Soc 013 Powershell Suspicious Script Investigation lab. The exercise is classified as a standalone malware analysis case.

## Tools & Environment

The primary tool utilized in this investigation was PowerShell. However, the evidence_map indicates that there are missing screenshots and command history records.

## What Triggered The Investigation

The investigation was initiated following the detection of a suspicious PowerShell alert summary.

## What Was Observed

Upon examination, the analysis revealed various indicators of potential malicious activity such as:
- Suspicious download behavior
- Process execution patterns
- Command-line activity in PowerShell script block style

## Evidence That Confirmed It

The following findings were confirmed during the investigation:
1. PowerShell alert summary
2. Simulated PowerShell event evidence
3. KQL-style hunting query
4. Command history (missing from evidence_map)
5. Investigation notes
6. Screenshot evidence (missing from evidence_map)
7. PowerShell command-line activity
8. Script block style evidence
9. MITRE ATT&CK mapping
10. Analyst triage notes

## Findings

The investigation revealed that the observed PowerShell script was exhibiting behaviors associated with known malicious activities, specifically:
- T1027 (Command and Scripting Interpreter)
- T1059.001 (PowerShell)
- T1105 (Remote Services)
- T1204.002 (System Information Discovery)

## Security Significance

The findings highlight the importance of monitoring and analyzing PowerShell activity within an organization's network, as it is a common vector for various malicious activities. Proper security measures should be in place to detect and respond to such threats effectively.