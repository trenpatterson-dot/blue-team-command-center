# Account Compromise Practice Case

## Case Overview

**Case Title:** Account Compromise Practice Case
**Case ID / Ticket Reference:** Practice Case
**Date Opened:** 2026-05-26
**Date Closed:** Not closed - escalated for investigation
**Analyst:** Tren Patterson
**Team / Queue:** Blue Team Command Center Practice
**Status:** Portfolio draft / Practice / Lab / Simulated
**Severity:** Medium
**Operating Mode:** Personal Lab

## Alert / Source Information

**Alert Name:** Risky Sign-In / Possible Account Compromise
**Source System:** Practice Identity Alert
**Detection Tool:** Blue Team Command Center Practice Case
**Alert Time:** 2026-05-26 10:12 local
**Reviewed Time:** 2026-05-26 10:30 local
**Timezone:** Local
**Related Playbook:** `../../playbooks/account-compromise.md`
**Related Checklist:** `../../checklists/account-compromise-triage-checklist.md`

## Impacted Entities

Only fictional lab details are used in this practice case.

**User / Account:** lab.user02
**Host / Device:** LAB-LAPTOP-017
**IP Address:** 198.51.100.24
**Domain / URL:** `mail.example`
**File / Hash:** Not applicable
**Application / Service:** Practice identity and mailbox platform
**Business Unit / Owner:** Lab / practice environment

## Initial Summary

A practice identity alert reported a successful login for a normal user account from an unusual location. The login was followed by repeated MFA prompts and suspicious mailbox activity. The alert requires analyst review before any account action.

No account changes were made. No password reset, MFA reset, session revocation, account disablement, user contact, external message, escalation, incident closure, or report publishing occurs without human approval.

## Known Facts

- This is a practice, lab, and simulated account compromise case.
- The alert reported a successful login from an unusual location.
- Repeated MFA prompts occurred after the unusual login.
- Suspicious mailbox activity was reported after authentication activity.
- The account is a normal user account, not an admin account.
- The user, host, IP address, domain, and alert values are fictional or documentation-safe examples.
- No real company, customer, user, host, IP, domain, ticket, internal system, raw log, screenshot, packet capture, binary, export, or private evidence is included.
- No account changes were made.
- No operational response action has been taken.

## Analyst Interpretation

- A successful unusual login followed by repeated MFA prompts and suspicious mailbox activity is concerning enough to require investigation.
- The account is not admin, which reduces privilege impact, but user mailbox activity can still indicate compromise.
- Benign explanations remain possible, including expected travel, VPN use, mobile network changes, or support activity.
- Suspicious explanations include stolen credentials, MFA fatigue, session hijacking, mailbox rule abuse, or cloud persistence.
- Because successful unusual login, MFA activity, and suspicious mailbox activity require review, the analyst decision is to escalate for investigation.

## Assumptions

- The risky sign-in alert is simulated.
- The account, host, IP address, domain, and mailbox activity are fictional.
- Reserved example IP addresses are used only for documentation safety.
- No real identity, email, cloud, endpoint, or network telemetry has been copied into this case folder.
- Human approval would be required before any operational action in a real environment.

## Missing Information

- Whether the user recognizes the login.
- Whether the user expected the location change.
- Whether MFA was approved, denied, or repeatedly ignored.
- Full session details.
- Device compliance and known-device status.
- Mailbox rule, forwarding, and sent-mail details.
- Whether cloud files or permissions were accessed or changed.
- Whether similar risky sign-ins exist for other accounts.
- Whether related phishing or endpoint alerts exist.

## Evidence Collected

The evidence folders currently contain placeholder files only. No screenshots, raw logs, raw notes, exports, or private artifacts are included in this case folder.

| Evidence Type | Location / Reference | Notes |
|---|---|---|
| Alert | `analysis/timeline.md` | Simulated risky sign-in summary only |
| Identity / Login | `analysis/indicators.md` | Fake/sanitized login values |
| MFA / Authentication | `analysis/findings.md` | Practice MFA review notes |
| Email / Cloud | `analysis/indicators.md` | Simulated mailbox activity only |
| Evidence gap checklist | `EVIDENCE-NEEDED.md` | Documents missing evidence without inventing artifacts |
| Checklist | `../../checklists/account-compromise-triage-checklist.md` | Required account compromise review steps |
| Playbook | `../../playbooks/account-compromise.md` | Analyst-led account compromise guidance |

Do not place restricted evidence in this folder unless policy allows it.

## Public / Private Evidence Boundary

- This case is safe for practice because it uses fictional and documentation-safe values only.
- Real identity logs, email exports, cloud exports, endpoint logs, screenshots, packet captures, ticket IDs, usernames, hostnames, IP addresses, domains, or internal system names must stay in approved company systems.
- Screenshots, logs, and raw notes are not included. Any future evidence must be sanitized, approved, and reviewed before use.
- This case should not be treated as evidence of a real incident.

## Analyst Decision

**Decision:** Escalate for investigation.

**Reason:** Successful unusual login, repeated MFA activity, and suspicious mailbox activity require authorized review before any account action.

## Timeline Reference

Use:

```text
analysis/timeline.md
```

