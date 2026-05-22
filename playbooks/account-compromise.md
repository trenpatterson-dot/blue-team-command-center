# Account Compromise

## Purpose

Investigate indicators that a user, service, admin, or cloud account may be compromised.

## When to Use

- Suspicious successful login.
- User reports unauthorized activity.
- MFA fatigue, impossible travel, mailbox rule creation, or unusual privilege use.
- Alerts indicate token theft, credential use, or suspicious session behavior.

## Required Evidence

- Account reference and alert details.
- Authentication timeline.
- MFA events and device details.
- Session, mailbox, cloud, or endpoint activity.
- User confirmation when available.

## Triage Questions

- Did the user confirm or deny the activity?
- Was MFA completed, bypassed, or repeatedly prompted?
- Were new devices, rules, tokens, apps, or permissions added?
- Was sensitive data accessed or changed?
- Are other accounts affected?

## Safe Investigation Steps

1. Record alert and account references.
2. Build a timeline from approved identity and application logs.
3. Review recent MFA, session, device, and privilege events.
4. Check for suspicious mailbox rules, forwarding, consent grants, or token activity when relevant.
5. Document likely impact and recommended actions for approval.

## Escalation Criteria

- User denies successful activity.
- Privileged account involved.
- Evidence of data access, forwarding, rule creation, or persistence.
- Multiple accounts share the same suspicious source or pattern.

## Report Output

Use `templates/INCIDENT-REPORT.md`.

## Lessons Learned

- Did MFA, conditional access, and alerting behave as expected?
- Were account owners reachable?
- Should detection or response runbooks be improved?

