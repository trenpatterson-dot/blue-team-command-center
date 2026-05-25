# IAM Triage Checklist

## Identity Context

- [ ] What account was involved?
- [ ] Is the account a normal user, admin, service account, or shared account?
- [ ] Is the account active, disabled, stale, or newly created?
- [ ] Is the account part of privileged groups?

## Authentication Context

- [ ] How many failed attempts occurred?
- [ ] Did a successful login occur after failures?
- [ ] Was MFA required?
- [ ] Was MFA successful, failed, or bypassed?
- [ ] Was the source device/location expected?

## Access Control Context

- [ ] Does the account follow least privilege?
- [ ] Is access role-based?
- [ ] Are permissions excessive?
- [ ] Are privileged groups monitored?
- [ ] Are access reviews performed?

## Alert Triage Decision

- [ ] Benign user error
- [ ] Stale credential or misconfiguration
- [ ] Suspicious activity
- [ ] Escalation needed
- [ ] Confirmed compromise

## Recommended Controls

- [ ] MFA
- [ ] Account lockout threshold
- [ ] Conditional access
- [ ] Privileged access review
- [ ] Service account review
- [ ] Strong logging and alerting
- [ ] User verification if suspicious