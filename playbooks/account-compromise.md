# Account Compromise

## Related Checklist

Use this checklist during account compromise triage:

```text
../checklists/account-compromise-triage-checklist.md
```

## Purpose

Investigate indicators that a user, service, admin, or cloud account may be compromised while preserving evidence and avoiding unapproved account, session, or communication actions.

## When to Use

- Suspicious successful login.
- User reports unauthorized activity.
- MFA fatigue, impossible travel, mailbox rule creation, or unusual privilege use.
- Alerts indicate token theft, credential use, or suspicious session behavior.
- Risky sign-in, cloud access anomaly, unusual mailbox activity, or suspicious account behavior needs analyst review.

## Required Evidence

- Account reference and alert details.
- Alert source, detection name, severity, and timestamps.
- Authentication timeline, including successful and failed logins.
- MFA events, methods, prompts, approvals, denials, resets, and changes when available.
- Device, browser, user agent, session, and token context when available.
- Source IP, location, VPN, proxy, or network context from approved tools.
- Mailbox, cloud application, file access, sharing, rule, forwarding, or OAuth activity when relevant.
- Related identity, email, endpoint, network, phishing, or malware alerts when available.
- User or account-owner confirmation only when contact is approved.

## Initial Triage Steps

1. Review the alert in approved identity, cloud, email, endpoint, or SIEM tools.
2. Record the account reference, alert source, detection name, severity, and timestamp.
3. Build a login timeline from approved logs.
4. Review MFA, authentication, session, device, and location context.
5. Check for mailbox, cloud application, OAuth, file access, or permission changes when relevant.
6. Check for related phishing, endpoint, malware, or network alerts.
7. Document facts separately from assumptions.
8. Prepare recommendations for an authorized reviewer.

## Identity / Login Review

- Review successful and failed logins.
- Compare login timestamps, source references, locations, devices, and user agents.
- Check for impossible travel, new device use, unusual application access, or unexpected login sequence.
- Identify whether the account is privileged, sensitive, externally exposed, service-related, or used for automation.
- Compare activity against expected account behavior and known maintenance or support work.
- Do not disable accounts, reset passwords, revoke sessions, or change account state without explicit human approval.

## MFA / Authentication Review

- Review MFA prompts, approvals, denials, fatigue patterns, and authentication result details.
- Check for new MFA method registration, MFA reset, password change, password reset, bypass, or conditional access exception events.
- Review session token, refresh token, or suspicious session behavior when available.
- Determine whether MFA activity supports a benign explanation or increases compromise concern.
- Do not reset MFA, change MFA methods, reset passwords, revoke sessions, or remove devices without explicit human approval.

## Email / Cloud Activity Review

- Review mailbox rules, forwarding settings, unusual sent mail, suspicious deletions, and inbox activity when relevant.
- Review cloud application access, file access, file sharing, downloads, privilege changes, group changes, OAuth consent, and application grants when available.
- Check whether activity occurred after a suspicious login or MFA event.
- Identify evidence of data access, persistence, or unauthorized cloud activity.
- Do not remove mailbox rules, change forwarding, remove OAuth grants, change permissions, or modify cloud access without explicit human approval.

## Endpoint / Device Context

- Review device identity, compliance or management state, known-device status, browser details, and user agent context when available.
- Check endpoint alerts for malware, suspicious process activity, credential theft, or phishing-related activity.
- Review VPN, remote access, shared device, kiosk, or help desk support context when relevant.
- Document whether device context supports expected activity or increases concern.
- Do not isolate endpoints, remove devices, or change endpoint state without explicit human approval.

## Network / Location Context

- Review source IP or approved source reference, location, ASN, ISP, VPN, proxy, hosting provider, or anonymizer context when available.
- Check impossible travel timing and whether expected travel or remote work explains the alert.
- Compare source activity against known corporate network or VPN patterns.
- Check whether the same source appears across multiple accounts.
- Do not block IPs, locations, domains, or indicators without explicit human approval.

## Escalation Criteria

Escalation may be appropriate when:

- User denies successful activity.
- Successful login occurs from a suspicious source.
- Impossible travel has no benign explanation.
- Repeated MFA prompts, suspicious MFA approval, or MFA fatigue pattern is present.
- New MFA method, password reset, session, token, device, or consent activity is unexpected.
- Suspicious mailbox rule, forwarding, OAuth grant, file access, or cloud permission change is observed.
- Privileged, sensitive, service, or high-value account is involved.
- Data access, download, sharing, or exfiltration concern exists.
- Multiple accounts share the same suspicious source or pattern.
- Related phishing, endpoint, malware, identity, cloud, or network alerts exist.

## Human Approval Requirements

Do not disable accounts, reset passwords, reset MFA, change MFA methods, revoke sessions, remove devices, remove mailbox rules, remove forwarding, remove OAuth grants, block indicators, contact users, escalate, close incidents, publish reports, or send external messages without the proper human approval process.

Approval is required before:

- Account disablement
- Password reset
- MFA reset or MFA method change
- Session revocation
- Device removal
- Mailbox rule or forwarding removal
- OAuth grant or application access removal
- IP, location, domain, or indicator blocking
- User contact
- Escalation to another team or leadership
- Incident closure
- Report publishing
- External communication

## Documentation Expectations

Document:

- Alert source, detection name, severity, and timestamp.
- Account reference and account sensitivity when allowed.
- Login timeline, MFA activity, session context, device context, and location context.
- Email, cloud, file, OAuth, and permission activity when relevant.
- Related alerts and scope checks.
- Evidence reviewed and evidence unavailable.
- Facts, assumptions, and analyst interpretation.
- Benign explanations considered.
- Suspicious indicators observed.
- Approval-required actions and whether approval was obtained.
- Recommended next steps for the authorized reviewer.

## Closeout Expectations

Before closing or escalating an account compromise case, confirm:

- [ ] Related checklist is complete or incomplete items are explained
- [ ] Alert details are reviewed
- [ ] Login timeline is reviewed or marked unavailable
- [ ] MFA and authentication activity is reviewed or marked unavailable
- [ ] Email and cloud activity is reviewed or marked unavailable
- [ ] Endpoint and device context is reviewed or marked unavailable
- [ ] Network and location context is reviewed or marked unavailable
- [ ] Related alerts are reviewed or marked unavailable
- [ ] Benign explanations are considered
- [ ] Suspicious indicators are documented
- [ ] Facts are separated from assumptions
- [ ] Missing information is documented
- [ ] Approval-required actions are clearly marked
- [ ] No account, session, MFA, mailbox, cloud, or communication action was taken without approval

## Report Output

Use `templates/INCIDENT-REPORT.md`.

## Lessons Learned

- Did MFA, conditional access, and alerting behave as expected?
- Were account owners reachable?
- Should detection or response runbooks be improved?
