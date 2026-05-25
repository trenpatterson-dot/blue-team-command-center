# Investigation Notes — SOC IAM Identity Alert Investigation

## Investigation Objective

Review an identity-based authentication alert involving failed login activity and determine whether the behavior appears benign, suspicious, or requires escalation.

## Alert Type

Identity / Authentication Alert

## Primary Questions

1. Which identity/account was involved?
2. How many failed login attempts occurred?
3. Did a successful login happen after the failed attempts?
4. Was the login source expected?
5. Was the behavior isolated or repeated?
6. Are IAM controls in place to reduce risk?
7. Should the event be closed, monitored, or escalated?

## Evidence Reviewed

| Evidence | Status | Notes |
|---|---|---|
| Failed login event | Pending | Capture Event Viewer, Wazuh, or sanitized lab screenshot |
| Successful login comparison | Pending | Compare with Event ID 4624 or equivalent sign-in event |
| Account lockout / password policy | Pending | Capture policy or document expected control |
| IAM control review | Pending | MFA, lockout, least privilege, conditional access |
| Investigation timeline | Pending | Build from reviewed events |
| Successful login comparison | Complete | Windows Security log filtered for Event ID 4624. Successful logon events were reviewed for correlation with failed authentication activity. Screenshot saved as `04-successful-login-context-4624-filter`. |

## Investigation Timeline


| Time | Event | Analyst Note |
|---|---|---|
| 12:10 PM | Failed authentication events reviewed | Windows Security log was filtered for Event ID 4625. Six failed logon events were observed. |
| 12:15 PM | Successful authentication context reviewed | Windows Security log was filtered for Event ID 4624 to compare failed logons against successful logon activity. |
| 12:20 PM | Account policy reviewed | `net accounts` output showed lockout threshold, duration, observation window, and password policy context. |
| 12:25 PM | IAM event logic documented | Key Windows identity/security event IDs were documented for failed logon, successful logon, lockout, account changes, privilege changes, and password activity. |
| 12:30 PM | Triage decision documented | Activity is treated as controlled lab evidence. In production, similar activity would require correlation against account privilege, source, MFA, and successful login behavior. |

## Analyst Assessment

Pending evidence review.

Initial hypothesis:

Repeated failed logins may indicate normal user error, password guessing, brute-force activity, password spraying, stale credentials, service-account misconfiguration, or attempted unauthorized access.

The risk increases if:
- Failures are repeated across many accounts
- The same source targets multiple identities
- A successful login occurs after failures
- The account has elevated privileges
- MFA is missing or bypassed
- Login source/location is unusual
Windows Security logs showed six Event ID 4625 failed logon events. This confirms authentication failure activity was present and reviewable. Because the failed attempts were generated in a controlled lab context, the activity is treated as lab evidence rather than real compromise. In a production SOC/IAM investigation, repeated 4625 events would require correlation against successful logons, source device/IP, account privilege level, MFA status, and account lockout policy.

Successful logon events were also reviewed using Windows Security Event ID 4624. This step is important because failed logons should not be analyzed alone. In a real SOC/IAM investigation, the analyst would check whether any successful authentication occurred after repeated failures, especially from the same account, host, source address, or time window.
## Triage Decision

Controlled lab evidence / No confirmed compromise.

The failed logon activity was generated in a lab environment to demonstrate identity alert investigation. In a production SOC/IAM environment, repeated failed logons would require review of account privilege, source device, source IP, MFA status, lockout behavior, and whether a successful login occurred after the failures.

## Final Analyst Summary

Windows Security logs were reviewed for failed and successful authentication activity. Event ID 4625 confirmed failed logon activity, while Event ID 4624 was reviewed to understand successful logon context. Local account policy was also reviewed using `net accounts`, showing account lockout controls and password policy context.

The main SOC/IAM takeaway is that failed logons should not be reviewed alone. Analysts should correlate authentication failures with successful logons, privilege level, source behavior, MFA status, and account policy controls before deciding whether to close, monitor, or escalate.


## Recommended Next Steps

- Confirm whether MFA is enabled
- Review account privilege level
- Check for successful login after failed attempts
- Review source IP/device/location context
- Check whether other accounts were targeted
- Validate lockout and password policy
- Escalate if compromise indicators are present
| Failed login event details | Complete | Event Properties for Windows Security Event ID 4625 reviewed. Screenshot saved as `03-failed-login-event-details-redacted` with local username/computer details redacted before public use. |

| Query / event ID logic | Complete | Windows identity/security event IDs were documented, including failed logon, successful logon, account lockout, account creation/deletion, privileged group changes, and password change/reset activity. Screenshot saved as `06-query-notes-failed-login-analysis`. |