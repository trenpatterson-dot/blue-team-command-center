# DEFENDER‑002 — Microsoft Defender for Identity Investigation

## Overview

This case study demonstrates how Microsoft Defender for Identity can detect and investigate suspicious lateral movement in an Active Directory environment. The objective was to identify potential identity‑related threats, triage an alert, map observed behaviors to the MITRE ATT&CK framework, and recommend mitigation steps. The investigation shows a structured workflow for identity threat analysis in a lab environment.

## Scenario

A Defender for Identity alert (ID DI‑1001) flagged **Suspicious lateral movement**. The alert indicated that a single user account attempted to access multiple systems over a short timeframe—behavior often associated with compromised credentials or privilege escalation attempts. The goal of this case was to verify whether the activity represented a true incident or a false positive and to document the triage process.

## Tools Used

- **Microsoft Defender for Identity** – Alerting and detection  
- **PowerShell** – Evidence collection (local admins, enabled users, logon events, running processes)  
- **Windows Event Logs** – Authentication and activity verification  
- **MITRE ATT&CK** – Technique mapping and context

## Skills Demonstrated

- Identity threat investigation and triage  
- Privileged account analysis and local user enumeration  
- Logon event review and process analysis  
- MITRE ATT&CK mapping (T1078, T1556, T1110, T1098, T1550)  
- Remediation planning (MFA enforcement, service account management, conditional access)

## MITRE ATT&CK Mapping

| Technique ID | Technique Name                  | Reason/Observation                                      |
|--------------|---------------------------------|---------------------------------------------------------|
| **T1078**    | Valid Accounts                 | Alert triggered by the use of valid credentials for lateral movement. |
| **T1556**    | Modify Authentication Process   | Pass‑the‑Hash and token manipulation could be used to move laterally. |
| **T1110**    | Brute Force                     | Multiple remote logon attempts could precede lateral movement. |
| **T1098**    | Account Manipulation            | Adversaries may create or modify accounts to facilitate persistence. |
| **T1550**    | Use of Stolen Credentials       | Credential theft and reuse (e.g. Kerberoasting) are common prerequisites to lateral movement. |

## Investigation Workflow

1. **Alert Identification** – Noted the DI‑1001 alert for suspicious lateral movement.  
2. **Local Administrator Review** – Verified that only authorized admin accounts were present; no shadow admins detected.  
3. **Enabled Local Account Review** – Checked all local user accounts and confirmed only legitimate accounts were enabled.  
4. **Logon Event Inspection** – Reviewed the ten most recent successful logon events (Event ID 4624) and found normal scheduled and admin activity.  
5. **Process Analysis** – Captured top running processes, finding benign applications (ChatGPT, Spotify, Chrome, GoogleDriveFS) without suspicious binaries or escalation tools.

## Key Evidence Summary

- **Local Administrators:** Only expected built‑in and system administrator accounts present.  
- **Enabled Users:** No unknown or rogue local accounts found.  
- **Logon Events:** Showed normal usage patterns; no large volumes of failed logons or unusual sources.  
- **Running Processes:** Consistent with everyday workstation activity; no malicious tools detected.

## Findings & Conclusions

The alert was triggered by heuristics that detect lateral movement, but host‑level evidence (local accounts, logon events, processes) did not support the presence of a compromised account or privilege escalation. This case was therefore assessed as a **false positive** in a controlled lab setting. The investigation nonetheless illustrates how identity alerts should be handled: verify privileged accounts, check local user status, review authentication logs, and correlate findings with MITRE ATT&CK.

## Remediation & Recommendations

- **Enforce MFA** for all privileged and sensitive accounts.  
- **Harden service and local accounts** by rotating passwords, disabling unused accounts, and auditing SPN assignments.  
- **Enable additional identity threat alerts** (e.g., Kerberoasting, Pass‑the‑Hash, suspicious LDAP queries) in Defender for Identity.  
- **Implement conditional access policies** to block or challenge risky sign‑ins.  
- **Strengthen network segmentation** and apply least‑privilege principles to reduce lateral movement opportunities.

## Portfolio Note

This investigation was conducted in a lab environment. All data and systems involved are simulated for training and portfolio purposes. No production systems or sensitive data were used.