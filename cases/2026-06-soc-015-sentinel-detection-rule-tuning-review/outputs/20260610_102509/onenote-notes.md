# SOC-015 Investigation Notes

Finding 1:
The original failed sign-in rule triggered on a low threshold of 3 failed attempts per user.

Finding 2:
Several alerts were likely false positives because they involved a single user, a known source IP, and low failed attempt counts.

Finding 3:
Source IP 203.0.113.77 targeted multiple accounts within a short period.

Finding 4:
The activity from 203.0.113.77 is more suspicious because it involved multiple users and repeated failures.

Finding 5:
The tuned rule improves signal quality by grouping activity by source IP and counting distinct accounts targeted.

Risk:
A noisy failed sign-in detection can cause alert fatigue. If every low-value failed login creates an alert, analysts may miss true password spraying or credential stuffing behavior.

MITRE ATT&CK:
- T1110 - Brute Force
- T1110.003 - Password Spraying
- T1110.004 - Credential Stuffing
- T1078 - Valid Accounts

Recommended Response:
Tune the detection threshold, group by source IP, prioritize activity targeting multiple accounts, document known false-positive patterns, and review alert performance after tuning.
