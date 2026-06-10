# SOC-016 Analyst Notes

Finding 1:
The suspicious activity occurred on WIN-WS-022 under analyst3.

Finding 2:
PowerShell used ExecutionPolicy Bypass, which increases suspicion.

Finding 3:
The script was launched from a user Downloads path, which is a user-writable location.

Finding 4:
The event included a suspicious web request to 203.0.113.77.

Finding 5:
A child cmd.exe process was observed after PowerShell execution.

Risk:
This activity may indicate unauthorized script execution, payload retrieval, phishing-related execution, or early-stage endpoint compromise.

Analyst Decision:
Escalate for endpoint timeline review and containment consideration.

Recommended Response:
Validate the script, investigate the network indicator, review related endpoint activity, isolate the host if malicious activity is suspected, and document final disposition.
