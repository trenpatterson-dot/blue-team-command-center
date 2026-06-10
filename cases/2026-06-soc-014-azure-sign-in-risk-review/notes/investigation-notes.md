# SOC-014 Investigation Notes

Finding 1:
The user analyst3@contoso.local had multiple failed sign-ins from source IP 203.0.113.88.

Finding 2:
The suspicious sign-ins were associated with an unfamiliar location.

Finding 3:
MFA was required but not satisfied during the failed sign-in attempts.

Finding 4:
A later successful sign-in came from expected source IP 198.51.100.24 with MFA satisfied.

Finding 5:
No successful sign-in from the suspicious source IP was observed in the simulated evidence.

Risk:
Repeated failed sign-ins from an unfamiliar source may indicate credential stuffing, password guessing, or early-stage account targeting. If credentials are compromised and MFA is not properly enforced, the attacker may gain access to cloud resources.

MITRE ATT&CK:
- T1110 - Brute Force
- T1110.004 - Credential Stuffing
- T1078 - Valid Accounts
- T1087 - Account Discovery

Recommended Response:
Review the affected user's sign-in history, confirm whether the suspicious source IP is expected, verify MFA enforcement, reset the user's password if compromise is suspected, monitor for repeated failures across accounts, and consider Conditional Access controls for unfamiliar locations or risky sign-ins.
