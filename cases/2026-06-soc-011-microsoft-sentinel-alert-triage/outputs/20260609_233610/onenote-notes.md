# SOC-011 Investigation Notes

Finding 1:
The account analyst3@contoso.local had five failed sign-in attempts from source IP 203.0.113.45.

Finding 2:
The failed attempts occurred in a short time window, which may indicate password guessing or password spraying activity.

Finding 3:
A successful sign-in was later observed from 198.51.100.24, which is treated as an expected source in the simulated evidence.

Finding 4:
No successful sign-in from the suspicious source IP 203.0.113.45 was observed.

Risk:
Repeated failed sign-ins from an unfamiliar external IP may indicate credential access attempts. If successful, the attacker could use valid credentials to access cloud resources.

MITRE ATT&CK:
- T1110 — Brute Force
- T1110.003 — Password Spraying
- T1078 — Valid Accounts

Recommended Response:
Verify MFA status, review user activity, confirm whether the source IP is expected, reset password if needed, and monitor or block the suspicious source.
