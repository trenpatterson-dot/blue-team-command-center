# Case Timeline

## Timeline Overview

This timeline documents the simulated order of events for the account compromise practice case.

This is a practice, lab, and simulated case. No real company, customer, user, host, IP, domain, ticket, internal system, raw log, screenshot, packet capture, binary, export, or private evidence is included.

## Timezone

**Timezone Used:** Local
**UTC Used?** No
**Notes:** Timestamps are fictional practice values.

## Timeline Table

| Time | Event | Source | Known Fact / Analyst Note |
|---|---|---|---|
| 2026-05-26 09:58 | Successful login from unusual location | Practice Identity Alert | Simulated source: `198.51.100.24` |
| 2026-05-26 10:03 | Repeated MFA prompts observed | Practice Identity Alert | MFA prompt outcome is not confirmed |
| 2026-05-26 10:08 | Suspicious mailbox activity observed | Practice Mailbox Alert | Simulated mailbox activity after login |
| 2026-05-26 10:12 | Risky sign-in alert generated | Practice Identity Alert | Alert requires analyst review before account action |
| 2026-05-26 10:20 | Case created | Blue Team Command Center | Practice case folder created |
| 2026-05-26 10:30 | Initial alert review documented | CASE.md | Known facts, assumptions, missing information, and approval gates documented |
| 2026-05-26 10:45 | Indicator review documented | analysis/indicators.md | Fake/sanitized login, MFA, mailbox, device, and network values documented |
| 2026-05-26 11:00 | Finding drafted | analysis/findings.md | Analyst decision set to escalate for investigation |

## Confirmed Events

- A simulated account compromise practice case was created.
- A successful unusual login was reported.
- Repeated MFA prompts were reported.
- Suspicious mailbox activity was reported.
- The account is a normal user account, not an admin account.
- No real evidence is included.
- No account changes were made.
- No operational response action occurred.

## Analyst Notes

- A successful unusual login can be benign, but the follow-on MFA and mailbox activity increase concern.
- MFA fatigue, token theft, or session hijacking cannot be ruled out from the current simulated evidence.
- Mailbox activity should be reviewed for rules, forwarding, sent mail, deletion, OAuth grants, and cloud access.
- The final analyst decision is escalation for investigation, not direct account action.
- Human approval is required before operational actions.

## Gaps in Timeline

- Exact user activity and travel context are not confirmed.
- MFA approval, denial, timeout, and method details are not confirmed.
- Full session and token details are not confirmed.
- Device compliance and known-device status are not confirmed.
- Mailbox rule, forwarding, sent-mail, and deletion details are not confirmed.
- Related alerts are not confirmed.

## Timeline Review Questions

- Was the unusual login expected?
- Were MFA prompts approved, denied, or ignored?
- Was a new device or user agent involved?
- Was a session token created, reused, or revoked by policy?
- Did mailbox activity include rules, forwarding, deletion, or suspicious sent mail?
- Were cloud files accessed, shared, or downloaded?
- Were there related phishing or endpoint alerts before the login?
- Are other accounts showing similar source activity?

## Closeout Notes

Before closing the case, confirm:

- [ ] Timeline is complete enough for another analyst to understand.
- [ ] Timezone is documented.
- [ ] Known facts are separated from analyst notes.
- [ ] Missing timestamps or event details are listed.
- [ ] No account action instructions are included.
- [ ] No sensitive data is exposed unnecessarily.

