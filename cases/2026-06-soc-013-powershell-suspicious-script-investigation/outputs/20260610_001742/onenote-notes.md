## Lab Recap
- **Lab Name:** 2026-06-soc-013-powershell-suspicious-script-investigation
- **Platform:** Standalone
- **Lab Type:** Malware Analysis
- **Date Completed:** [Not specified in the provided data]
- **Objective:** Investigate a suspicious PowerShell script using given evidence.
- **Tools Used:** Powershell
- **What I Did:** Reviewed the PowerShell alert summary, identified affected host and user, examined suspicious PowerShell command-line activity, checked for download behavior, and looked for encoded or bypass-style arguments.
- **What I Found / Results:** Confirmed findings include PowerShell alert summary, simulated PowerShell event evidence, and KQL-style hunting query. However, command history and screenshots are missing.
- **What Clicked / What I Learned:** Understood the importance of analyzing PowerShell scripts for potential threats and the use of KQL-style queries in investigations.
- **Difficulty:** Moderate (due to the need to interpret PowerShell commands and understand their implications)
- **Screenshots:** [Missing, as per unresolved_gaps in evidence_map]
- **Tags:** Malware Analysis, PowerShell, SOC Investigation, KQL

## Study Notes
- Understand the importance of investigating suspicious PowerShell scripts for potential threats.
- Familiarize with KQL (Kusto Query Language) style hunting queries used in PowerShell analysis.
- Recognize MITRE ATT&CK techniques related to PowerShell: T1027, T1059.001, T1105, and T1204.002.
- Learn to interpret PowerShell command-line activity for signs of malicious behavior.
- Understand the need to check for download behavior and encoded or bypass-style arguments in PowerShell scripts.
- Remember to document findings and triage notes during an investigation.

Revision Notes: Include screenshots from the lab session as they provide visual evidence supporting the findings. Also, gather command history to support the sequence of actions taken during the investigation.