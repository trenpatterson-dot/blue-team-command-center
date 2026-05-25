# Findings — SOC IAM Identity Alert Investigation

## Finding 1 — Repeated Failed Authentication Attempts Require Review

### Summary
Repeated failed login attempts were identified and reviewed as part of an identity-based investigation.

### Security Significance
Failed authentication activity can indicate user error, brute-force attempts, password spraying, stale credentials, or unauthorized access attempts.

### Evidence
Pending screenshot evidence.

Expected screenshots:
- Failed login filter
- Failed login event details
- Timeline or query view

### Risk
Medium, depending on account privilege level, source reputation, volume, and whether a successful login followed.

### Recommendation
Review authentication logs, correlate source activity, confirm whether the account is privileged, and validate MFA/account lockout controls.

---

## Finding 2 — Successful Login After Failed Attempts Increases Risk

### Summary
A successful authentication event following failed attempts can increase concern because it may indicate a guessed, reused, or compromised password.

### Security Significance
SOC analysts should not review failed logins in isolation. Correlation with successful logins helps determine whether the activity remained unsuccessful or possibly resulted in account access.

### Evidence
Pending screenshot evidence.

Expected screenshots:
- Successful login comparison
- Timeline showing failed and successful authentication context

### Risk
Medium to High if the successful login came from an unusual source, unknown device, impossible travel condition, or privileged account.

### Recommendation
Correlate failed and successful authentication events, verify user legitimacy, review MFA status, and escalate if the activity appears unauthorized.

---

## Finding 3 — IAM Controls Reduce Authentication Attack Risk

### Summary
IAM controls such as MFA, account lockout, least privilege, and conditional access reduce the impact of identity-based attacks.

### Security Significance
Identity is a common attack path. Strong authentication controls help prevent failed-login activity from becoming account compromise.

### Evidence
Pending screenshot evidence.

Expected screenshots:
- Account policy or lockout settings
- IAM triage checklist
- Access-control review notes

### Risk
Medium if controls are weak, missing, or undocumented.

### Recommendation
Enforce MFA where possible, configure account lockout thresholds, review privileged access, monitor repeated failed authentication attempts, and maintain clear logging for SOC triage.
