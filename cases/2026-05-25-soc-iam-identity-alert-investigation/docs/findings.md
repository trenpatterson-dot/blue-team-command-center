# Findings - SOC IAM Identity Alert Investigation

## Finding 1 - Repeated Failed Authentication Attempts Require Review

### Summary

Windows Security logs were filtered for Event ID 4625, and six failed logon events were observed in controlled lab evidence.

### Security Significance

Failed authentication activity can indicate user error, brute-force attempts, password spraying, stale credentials, service-account misconfiguration, or unauthorized access attempts. A SOC/IAM analyst should review the volume, account context, source context, time window, and whether the failures were followed by successful authentication.

### Evidence

- `02-event-viewer-security-filter-4625`
- `03-failed-login-event-details-redacted`
- `07-investigation-timeline`

### Risk

Medium in a production environment, depending on account privilege level, source reputation, event volume, MFA status, lockout behavior, and whether a successful login followed.

### Recommendation

Review authentication logs, correlate source activity, confirm whether the account is privileged, and validate MFA/account lockout controls.

---

## Finding 2 - Successful Login Context Is Required for Failed-Logon Triage

### Summary

Windows Security logs were reviewed for Event ID 4624 to provide successful logon context alongside the failed logon review.

### Security Significance

SOC analysts should not review failed logons in isolation. Correlation with successful logons helps determine whether the activity remained unsuccessful or may have resulted in account access. A successful authentication event following failed attempts can increase concern because it may indicate a guessed, reused, or compromised password.

### Evidence

- `04-successful-login-context-4624-filter`
- `07-investigation-timeline`

### Risk

Medium to High in a production environment if the successful login came from an unusual source, unknown device, impossible travel condition, or privileged account.

### Recommendation

Correlate failed and successful authentication events, verify user legitimacy, review MFA status, and escalate if the activity appears unauthorized.

---

## Finding 3 - Account Policy and IAM Controls Reduce Authentication Attack Risk

### Summary

Local account policy was reviewed using `net accounts`, showing lockout threshold, lockout duration, observation window, and password policy context.

### Security Significance

Identity is a common attack path. MFA, account lockout, least privilege, conditional access, privileged access review, and strong logging help reduce the chance that failed-logon activity becomes account compromise.

### Evidence

- `05-account-policy-or-lockout-context`
- `06-query-notes-failed-login-analysis`
- `08-public-private-boundary-check`

### Risk

Medium in a production environment if controls are weak, missing, misconfigured, or undocumented.

### Recommendation

Enforce MFA where possible, configure account lockout thresholds, review privileged access, monitor repeated failed authentication attempts, and maintain clear logging for SOC triage.

---

## Overall Conclusion

This case remains controlled lab evidence with no confirmed compromise. The investigation demonstrates the SOC/IAM triage process: identify failed authentication activity, correlate successful logon context, review account policy, document the event logic, and preserve a clean public/private evidence boundary before publishing.
