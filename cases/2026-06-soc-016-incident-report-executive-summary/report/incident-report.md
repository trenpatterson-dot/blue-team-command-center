# Incident Report - Suspicious PowerShell Execution

## Executive Summary
A suspicious PowerShell execution event was identified on WIN-WS-022 under the analyst3 user context. The activity included ExecutionPolicy Bypass, a script launched from the user's Downloads folder, a suspicious web request to 203.0.113.77, and a child cmd.exe process.

The evidence supports escalation for endpoint review and containment consideration. No confirmed data loss is documented in the provided evidence.

## Incident Details
- Incident Type: Suspicious PowerShell execution
- Severity: Medium
- Affected Device: WIN-WS-022
- Affected User: analyst3
- Status: Investigated
- Disposition: Escalate for endpoint review

## Timeline
- 14:01 UTC - Suspicious PowerShell alert created.
- 14:03 UTC - PowerShell command reviewed.
- 14:05 UTC - Script path identified in Downloads folder.
- 14:08 UTC - Suspicious web request to 203.0.113.77 observed.
- 14:11 UTC - Child cmd.exe process observed.
- 14:18 UTC - Analyst recommended escalation.

## Evidence Reviewed
- Incident summary
- Timeline CSV
- Key evidence notes
- Command history
- Analyst notes

## Key Findings
- PowerShell executed with ExecutionPolicy Bypass.
- The script path was located in a user-writable Downloads folder.
- A suspicious web request was observed.
- A child command shell process followed the PowerShell activity.

## Security Impact
The behavior could indicate unauthorized script execution or payload staging. If malicious, the activity may support additional payload download, command execution, persistence, or lateral movement.

## MITRE ATT&CK Mapping
- T1059.001 - PowerShell
- T1105 - Ingress Tool Transfer
- T1027 - Obfuscated Files or Information
- T1204.002 - Malicious File

## Recommendations
1. Review the full endpoint timeline.
2. Validate whether the script was expected.
3. Investigate 203.0.113.77.
4. Collect the script and related artifacts.
5. Isolate the endpoint if malicious activity is suspected.
6. Reset credentials if compromise is confirmed.
7. Document final disposition and lessons learned.
