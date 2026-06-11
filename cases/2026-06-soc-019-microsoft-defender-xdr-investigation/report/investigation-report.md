# SOC-019 Investigation Report

## Executive Summary

Microsoft Defender XDR generated an endpoint alert for suspicious PowerShell execution on workstation `WIN-0427`. The investigation reviewed the alert context, user context, process tree, command-line behavior, and possible follow-on activity.

The activity was suspicious because PowerShell can be used by attackers for command execution, discovery, payload staging, and defense evasion. In this case, the observed command appeared limited to system inventory review, and no evidence of encoded commands, external downloads, privilege escalation, persistence, or additional suspicious child processes was identified.

The case was closed as benign administrative activity with continued monitoring recommended.

## Alert Overview

| Field | Value |
|---|---|
| Alert Name | Suspicious PowerShell Execution Detected |
| Platform | Microsoft Defender XDR |
| Severity | Medium |
| Device | WIN-0427 |
| User | jdoe@contoso.com |
| Process | powershell.exe |
| Parent Process | explorer.exe |
| Detection Time | 2026-06-11 09:22 UTC |
| Command Line | powershell.exe Get-Process |
| Network Activity | None observed |
| Encoded Command | No |

## Investigation Timeline

| Time UTC | Event | Analyst Notes |
|---|---|---|
| 09:19 | User logged into workstation | Interactive user session observed |
| 09:21 | Explorer.exe active | Normal shell process context |
| 09:22 | PowerShell launched | PowerShell started by explorer.exe |
| 09:22 | Command executed | `Get-Process` command observed |
| 09:23 | Process completed | No suspicious child process spawned |
| 09:25 | Device timeline reviewed | No payload download or persistence observed |
| 09:27 | User/device context reviewed | No abnormal privilege activity identified |
| 09:30 | Alert disposition assigned | Benign administrative activity |

## Evidence Reviewed

### Process Activity

PowerShell launched from `explorer.exe`, which indicates the activity occurred from an interactive user session. No suspicious parent process such as Office, browser script execution, or unknown binary was observed.

### Command-Line Review

The observed command was `Get-Process`. This command can be used for system discovery, but it can also be used for legitimate troubleshooting and administrative review.

No encoded PowerShell command, suspicious download cradle, remote script execution, or obfuscated command-line pattern was identified.

### Device Timeline

The device timeline did not show evidence of payload download, persistence creation, suspicious scheduled tasks, credential dumping behavior, or abnormal child processes.

### User Context

The activity was associated with a standard user account. No privilege escalation or administrative action was observed during the investigation window.

### Evidence Gaps

This case study does not include real enterprise Defender telemetry or production device access. The investigation uses a simulated Defender XDR-style scenario for portfolio development.

## MITRE ATT&CK Mapping

| Technique | Name | Evidence |
|---|---|---|
| T1059.001 | PowerShell | PowerShell execution was observed on the endpoint |
| T1082 | System Information Discovery | The `Get-Process` command may support local system/process discovery |

## Analyst Assessment

The alert was worth investigating because PowerShell is frequently used in both legitimate administration and attacker tradecraft. The strongest risk indicator was the use of PowerShell on an endpoint.

The strongest mitigating evidence was the simple command-line activity, lack of encoded or obfuscated execution, normal parent process context, and absence of suspicious follow-on behavior.

Based on the available evidence, the activity was suspicious but not confirmed malicious.

## Final Disposition

Benign Administrative Activity

## Severity Decision

Final severity was assessed as Low after investigation.

The alert began as Medium because PowerShell execution can indicate suspicious endpoint activity. Severity was lowered after no malicious command behavior, external download, persistence, or privilege escalation was identified.

## Recommendations

1. Continue monitoring PowerShell execution across endpoints.
2. Alert on encoded PowerShell, download cradles, and suspicious child processes.
3. Review PowerShell logging coverage, including Script Block Logging where appropriate.
4. Confirm whether the user had a legitimate troubleshooting need.
5. Retain Defender XDR detections for suspicious scripting behavior.
6. Escalate future PowerShell alerts if external network connections, obfuscation, or privilege escalation are observed.

## Portfolio Boundary

This is a lab/case study created for portfolio development. It does not represent production SOC employment, unrestricted enterprise access, or authority over real customer systems.
