\# Case Timeline



\## Timeline Overview



This timeline documents the order of events for the suspicious PowerShell practice case.



This is a personal lab/practice case. No real company, customer, or restricted data is included.



\## Timezone



\*\*Timezone Used:\*\* Local  

\*\*UTC Used?\*\* No  

\*\*Notes:\*\* Timestamps are placeholders for practice. Replace with real lab timestamps if sanitized evidence is added later.



\## Timeline Table



| Time | Event | Source | Known Fact / Analyst Note |

|---|---|---|---|

| TBD | Suspicious PowerShell activity identified | Practice EDR / Windows Security Logs | PowerShell activity was selected for investigation practice. |

| TBD | Case created | Blue Team Command Center | Practice case folder created from reusable case template. |

| TBD | Initial case summary documented | CASE.md | Known facts, assumptions, missing information, and next steps documented. |

| TBD | Command-line review pending | analysis/indicators.md | Full command line still needs review. |

| TBD | Parent process review pending | analysis/indicators.md | Parent/child process relationship still needs review. |

| TBD | Network and file activity pending | analysis/indicators.md | Network connections and file activity still need review if available. |

| TBD | Findings pending review | analysis/findings.md | Final finding cannot be completed until evidence and indicators are reviewed. |



\## Confirmed Events



\- A suspicious PowerShell practice case was created.

\- The case is being handled in Personal Lab Mode.

\- No real company or customer data is being used.

\- No endpoint isolation, process termination, file deletion, blocking, or account action has occurred.

\- The investigation is currently in documentation and analysis practice stage.



\## Analyst Notes



\- Suspicious PowerShell activity can be benign administration, expected automation, endpoint management, or potentially malicious execution.

\- Parent process matters because PowerShell launched by Office, browser, archive tools, or unusual processes may increase concern.

\- Command-line content matters because encoded commands, bypass flags, download commands, and obfuscation can increase risk.

\- Network and file activity can help determine whether a payload was downloaded or executed.

\- No action should be taken without approval.



\## Gaps in Timeline



\- Exact alert time is not documented yet.

\- Exact command execution time is not documented yet.

\- Full command line is not documented yet.

\- Parent process is not documented yet.

\- User and host context are not documented yet.

\- Network connections are not documented yet.

\- File activity is not documented yet.

\- Related endpoint alerts have not been reviewed yet.



\## Timeline Review Questions



\- When did the PowerShell command run?

\- What process launched PowerShell?

\- Was the command encoded or obfuscated?

\- Did the command connect to a network destination?

\- Did the command create, modify, download, or execute a file?

\- Was the user expected to run PowerShell?

\- Was the host expected to run this activity?

\- Were there related alerts before or after the event?



\## Closeout Notes



Before closing the case, confirm:



\- \[ ] Timeline is complete enough for another analyst to understand.

\- \[ ] Timezone is documented.

\- \[ ] Known facts are separated from analyst notes.

\- \[ ] Missing timestamps are listed.

\- \[ ] No sensitive data is exposed unnecessarily.

