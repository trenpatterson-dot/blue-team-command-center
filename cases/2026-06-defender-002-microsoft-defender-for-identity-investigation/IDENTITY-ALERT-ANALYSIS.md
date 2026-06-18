# Identity Alert Analysis

## Alert Description

**Alert ID:** DI‑1001  
**Type:** Suspicious lateral movement  
**Severity:** High

Microsoft Defender for Identity raised this alert when a single user account attempted to access multiple systems within a short timeframe. Such activity can indicate credential theft or attempts to explore domain privileges.

## Context

- **User:** jdoe (test account in lab)  
- **Host:** Lab workstation  
- **Time:** [Investigation date/time]

The user is not a domain administrator but has standard user privileges. The alert fired after several RDP/SMB sessions were initiated on different hosts.

## Potential False‑Positives

- **Legitimate administrative tasks** – IT administrators sometimes perform multiple remote logons during patching or maintenance windows.
- **Security software scans** – Automated security tools may access multiple hosts, triggering lateral movement heuristics.
- **Lab noise** – In a testing environment, scripted tasks can mimic suspicious behavior.

## MITRE ATT&CK Mapping

- **T1078 – Valid Accounts:** The alert involved the use of valid credentials to access other hosts.
- **T1556 – Modify Authentication Process:** Lateral movement often involves token reuse or Pass‑the‑Hash techniques.
- **T1550 – Use of Stolen Credentials:** The pattern may suggest stolen or reused credentials.

In this case, evidence did not support these techniques, but the mapping illustrates why the alert is high severity.
