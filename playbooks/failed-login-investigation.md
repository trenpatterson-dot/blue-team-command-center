# Failed Login Investigation

## Purpose

Investigate failed authentication activity to determine whether it is expected user behavior, misconfiguration, password spraying, brute force activity, or early account compromise activity.

## Related Checklist

Use this checklist during triage:

```text
checklists/failed-login-triage-checklist.md

## When to Use

- Repeated failed logins against one account.
- Failed logins across many accounts from one source.
- Failed logins from unusual locations, devices, or times.
- Authentication alerts from SIEM, identity, VPN, cloud, or endpoint tools.

## Required Evidence

- Alert details and timestamps.
- Account names or approved account references.
- Source IPs or approved network references.
- Authentication result codes.
- Successful login activity near the same time window.
- Known maintenance, password reset, or service account context.

## Triage Questions

- Is the activity limited to one user or spread across many users?
- Did any successful login follow the failures?
- Is the source known, expected, or previously suspicious?
- Is the account privileged, executive, service, or externally exposed?
- Does the pattern match password spraying or normal retry behavior?

## Safe Investigation Steps

1. Record the alert ID and time window.
2. Review failed and successful authentication events in approved tools.
3. Compare source, user, device, and location patterns.
4. Check for recent password resets, MFA prompts, account lockouts, or help desk tickets.
5. Document known facts separately from interpretation.
6. Prepare recommendations for an authorized reviewer.

## Escalation Criteria

- Successful login after suspicious failures.
- Privileged or sensitive account involved.
- Multiple accounts targeted from one source.
- Known malicious IP, impossible travel, or suspicious MFA behavior.
- User reports they did not attempt the login.

## Report Output

Use `templates/ALERT-TRIAGE-REPORT.md` or `templates/INCIDENT-REPORT.md`.

## Lessons Learned

- Did the alert provide enough context?
- Were account ownership and business impact clear?
- Should thresholds, allowlists, or detections be tuned?

## Failed Login Decision Points

Before closing or escalating a failed login case, confirm:

- [ ] Failed login count is documented or marked unavailable
- [ ] Timestamp range is documented or marked unavailable
- [ ] Source context is reviewed or marked unavailable
- [ ] Target account sensitivity is reviewed or marked unavailable
- [ ] Successful login activity after failures is reviewed or marked unavailable
- [ ] Similar activity across other accounts is reviewed or marked unavailable
- [ ] Facts are separated from assumptions
- [ ] Missing information is documented
- [ ] Approval-required actions are clearly marked

## Escalation Reminder

Escalation may be appropriate when:

- A successful login follows repeated failures
- A privileged account is targeted
- Multiple accounts are targeted
- Multiple sources target the same account
- The source is unusual or suspicious
- The user denies the activity
- Related endpoint, identity, or network alerts exist

Do not block, disable, reset, isolate, contact users, escalate, close, publish, or send messa

