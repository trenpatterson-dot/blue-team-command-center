# Failed Login Investigation

## Purpose

Investigate failed authentication activity to determine whether it is expected user behavior, misconfiguration, password spraying, brute force activity, or early account compromise activity.

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

