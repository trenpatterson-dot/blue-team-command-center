# Indicators

Use this file to document indicators reviewed during the account compromise practice case.

This is a practice, lab, and simulated case. No real company, customer, user, host, IP, domain, ticket, internal system, raw log, screenshot, packet capture, binary, export, or private evidence is included.

## Indicator Summary

**Case Title:** Account Compromise Practice Case
**Date Reviewed:** 2026-05-26
**Analyst:** Tren Patterson
**Operating Mode:** Personal Lab

## Indicator Table

| Indicator | Type | Source | Context | Status | Notes |
|---|---|---|---|---|---|
| lab.user02 | User / Account | Practice Identity Alert | Fictional normal user account | Normal user | Not an admin account |
| LAB-LAPTOP-017 | Device | Practice Identity Alert | Fictional device reference | Unknown | Needs device context review |
| 198.51.100.24 | IP Address | Documentation-safe reserved example | Simulated unusual login source | Reserved example | Not a real incident IOC |
| 203.0.113.50 | IP Address | Documentation-safe reserved example | Simulated mailbox/cloud access source | Reserved example | Not a real incident IOC |
| mail.example | Domain | Documentation-safe example | Simulated mailbox platform | Reserved example | Not a real domain for investigation |
| Risky sign-in | Alert | Practice Identity Alert | Successful unusual login | Suspicious | Needs login timeline review |
| Repeated MFA prompts | Authentication | Practice Identity Alert | Multiple MFA prompts after login | Suspicious | Needs MFA detail review |
| Suspicious mailbox activity | Email / Cloud | Practice Mailbox Alert | Simulated mailbox activity after sign-in | Suspicious | Needs rule, forwarding, and sent-mail review |

## Identity / Login Review

- Successful login from `198.51.100.24` was reported.
- The login source is a reserved documentation example, not a real incident IP.
- The account is a normal user account, not an admin account.
- Full login timeline, device, session, and user agent details are not confirmed.
- No account disablement, password reset, session revocation, or account change has occurred.

## MFA / Authentication Review

- Repeated MFA prompts were reported after the unusual login.
- MFA approval, denial, timeout, and method details are not confirmed.
- No MFA reset or MFA method change has occurred.
- No session revocation has occurred.
- MFA fatigue remains a suspicious possibility until details are reviewed.

## Email / Cloud Activity Review

- Suspicious mailbox activity was reported after the login.
- Mailbox rule, forwarding, deletion, sent-mail, OAuth grant, and file access details are not confirmed.
- No mailbox rule removal, forwarding change, OAuth grant removal, or cloud permission change has occurred.

## Endpoint / Device Context

- Device value is fictional and needs context review.
- Known-device status is not confirmed.
- Device compliance or management state is not confirmed.
- Related endpoint alerts have not been reviewed.
- No endpoint action has occurred.

## Network / Location Context

Network values use documentation-safe examples only.

- `198.51.100.24` is a reserved example address for the unusual login source.
- `203.0.113.50` is a reserved example address for simulated mailbox/cloud activity.
- `mail.example` is a documentation-safe example domain.
- No real identity logs, proxy logs, DNS logs, firewall logs, packet captures, or exports are included.
- No IP, location, domain, or indicator blocking has occurred.

## Benign Possibilities

- Expected travel.
- VPN or proxy use.
- Mobile carrier location change.
- New device or browser use.
- Help desk or support activity.
- User mistyping password or retrying MFA.
- Conditional access or risky sign-in false positive.
- Security testing or lab activity.

## Suspicious Possibilities

- Stolen password.
- MFA fatigue or push bombing.
- Session hijacking.
- Token theft.
- Suspicious mailbox rule creation.
- Unauthorized forwarding.
- OAuth consent abuse.
- Unauthorized cloud access.
- Data access or exfiltration.
- Follow-on phishing from the mailbox.

## Safe Handling Notes

Do not disable accounts, reset passwords, reset MFA, revoke sessions, remove devices, change mailbox settings, remove OAuth grants, block indicators, contact users, escalate, close incidents, publish reports, or send external messages without human approval.

## Recommended Next Steps

| Priority | Recommendation | Reason | Approval Needed? |
|---|---|---|---|
| High | Complete account compromise triage checklist | Ensures login, MFA, mailbox, cloud, device, and location review | No |
| High | Review login and MFA timeline | Determines whether authentication pattern supports compromise | No |
| High | Escalate for investigation | Successful unusual login, MFA activity, and mailbox activity require review | Yes |
| Medium | Review mailbox and cloud activity | Identifies suspicious rules, forwarding, grants, or data access | No |
| Medium | Review similar source activity | Helps determine scope | No |

## Closeout Review

Before closing this section, confirm:

- [ ] Account and login details are documented as fake/sanitized.
- [ ] MFA activity is reviewed or marked unavailable.
- [ ] Email and cloud activity is reviewed or marked unavailable.
- [ ] Endpoint and device context is reviewed or marked unavailable.
- [ ] Network and location context is reviewed or marked unavailable.
- [ ] Approval-required actions are marked.
- [ ] No account changes were made without approval.
- [ ] Sensitive indicators are protected.

