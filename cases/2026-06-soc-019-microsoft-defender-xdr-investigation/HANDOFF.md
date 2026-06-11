# HANDOFF — SOC-019 Microsoft Defender XDR Investigation

## Project
SOC-019 — Microsoft Defender XDR Investigation

## Status
In Progress

## Goal
Create a portfolio-ready Microsoft Defender XDR endpoint investigation case.

## Required Outputs
- README.md
- report/investigation-report.md
- outputs/technical.md
- outputs/eli10.md
- outputs/linkedin.md
- outputs/onenote.md
- outputs/executive-summary.md

## Scenario
Suspicious PowerShell execution was detected on a workstation. The analyst must review the process tree, user context, device timeline, and follow-on activity.

## Analyst Questions
1. What device generated the alert?
2. Which user was involved?
3. What PowerShell command was executed?
4. What parent process launched PowerShell?
5. Was the command encoded or obfuscated?
6. Did PowerShell download or execute external content?
7. Were additional processes spawned?
8. What MITRE ATT&CK techniques apply?
9. What severity should be assigned?
10. What is the final disposition?

## Evidence Boundary
Lab/case study only. Do not claim production SOC employment or enterprise authority.
