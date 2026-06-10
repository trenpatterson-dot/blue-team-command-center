# SOC-012 Investigation Notes

Finding 1:
The device WIN-WS-014 generated suspicious PowerShell activity under the analyst3 user context.

Finding 2:
PowerShell executed with -NoProfile, ExecutionPolicy Bypass, and EncodedCommand arguments.

Finding 3:
The parent process was winword.exe, which may indicate a suspicious Office document launching PowerShell.

Finding 4:
A child cmd.exe process was observed after PowerShell execution.

Finding 5:
A separate PowerShell Get-Process command from explorer.exe appeared less suspicious and may represent normal admin or user activity.

Risk:
Office-to-PowerShell execution with encoded command usage may indicate malicious document activity, phishing payload execution, or early-stage endpoint compromise.

MITRE ATT&CK:
- T1059.001 - PowerShell
- T1204.002 - Malicious File
- T1566.001 - Spearphishing Attachment
- T1027 - Obfuscated Files or Information

Recommended Response:
Review the device timeline, isolate the endpoint if malicious activity is suspected, collect the command line and related artifacts, investigate the source document, check for payload download activity, and reset credentials if compromise is confirmed.
