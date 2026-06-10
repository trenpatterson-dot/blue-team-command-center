# SOC-013 Investigation Notes

Finding 1:
The device WIN-WS-022 generated suspicious PowerShell activity under the analyst3 user context.

Finding 2:
PowerShell executed with ExecutionPolicy Bypass and referenced a script from the user's Downloads folder.

Finding 3:
The evidence included Invoke-WebRequest behavior to 203.0.113.77, which may indicate attempted download activity.

Finding 4:
A child cmd.exe process was observed after the suspicious PowerShell activity.

Finding 5:
A separate Get-Process command appeared less suspicious and may represent normal PowerShell usage.

Risk:
PowerShell with bypass-style arguments and download behavior may indicate unauthorized script execution, malicious document activity, payload staging, or early-stage endpoint compromise.

MITRE ATT&CK:
- T1059.001 - PowerShell
- T1105 - Ingress Tool Transfer
- T1027 - Obfuscated Files or Information
- T1204.002 - Malicious File

Recommended Response:
Review the device timeline, validate the script file, check network indicators, isolate the endpoint if malicious activity is suspected, collect related artifacts, and tune detections for suspicious PowerShell download and bypass behavior.
