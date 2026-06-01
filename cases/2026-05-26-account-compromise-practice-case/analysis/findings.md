# Findings

Use this file to document the main finding from the account compromise practice case.

This is a practice, lab, and simulated case. No real company, customer, user, host, IP, domain, ticket, internal system, raw log, screenshot, packet capture, binary, export, or private evidence is included.

## Finding Summary

**Case Title:** Account Compromise Practice Case
**Date Reviewed:** 2026-05-26
**Analyst:** Tren Patterson
**Operating Mode:** Personal Lab
**Finding Status:** Documented / evidence placeholders only

## Finding Title

Possible Account Compromise Requires Investigation Due to Successful Unusual Login, MFA Activity, and Suspicious Mailbox Activity

## Finding Type

- [x] Authentication activity
- [ ] Phishing
- [ ] Malware
- [ ] Endpoint alert
- [ ] Network activity
- [ ] Suspicious command execution
- [x] Account compromise
- [ ] Vulnerability
- [ ] Policy violation
- [ ] Detection gap
- [x] Process gap
- [ ] Other

## Severity

- [ ] Low
- [x] Medium
- [ ] High
- [ ] Critical

## Known Facts

- A simulated risky sign-in / possible account compromise alert was reviewed.
- The alert reported a successful login from an unusual location.
- Repeated MFA prompts followed the unusual login.
- Suspicious mailbox activity was reported.
- The account is a normal user account, not an admin account.
- User, host, IP, domain, and alert values are fake or documentation-safe.
- No account changes were made.
- No password reset, MFA reset, session revocation, account disablement, user contact, external message, escalation, incident closure, or report publishing has occurred.

## Evidence Supporting the Finding

| Evidence | Source / Location | What It Shows |
|---|---|---|
| Case summary | `../CASE.md` | Simulated account compromise scenario and analyst decision |
| Timeline notes | `timeline.md` | Alert sequence and missing context |
| Indicator notes | `indicators.md` | Fake/sanitized login, MFA, mailbox, device, and network values |
| Evidence gap checklist | `../EVIDENCE-NEEDED.md` | Confirms logs, screenshots, raw notes, and exports are not present |
| Checklist | `../../checklists/account-compromise-triage-checklist.md` | Required account compromise review steps |
| Playbook | `../../playbooks/account-compromise.md` | Review-only account compromise guidance |

## Analyst Interpretation

- Successful unusual login plus repeated MFA prompts and suspicious mailbox activity is a meaningful compromise signal.
- Normal user status lowers admin privilege risk, but mailbox activity can still support phishing, forwarding, data access, or persistence concerns.
- Benign explanations remain possible and should be checked.
- Suspicious explanations remain possible because login, MFA, and mailbox indicators happened in sequence.
- Escalation for investigation is appropriate because authorized review is required before account action.

## Assumptions

- The risky sign-in and mailbox alert are simulated.
- The user, host, IP, domain, device, and mailbox values are fictional or reserved examples.
- No real evidence has been added to the case folder.
- A real environment would require approved-tool review before response actions.

## Missing Information

- Whether the user recognizes the login.
- Full login timeline.
- MFA approval, denial, timeout, and method details.
- Session and token details.
- Device compliance and known-device status.
- Mailbox rule and forwarding details.
- Unusual sent mail or deletion details.
- OAuth grant or cloud application activity.
- Related phishing, endpoint, identity, cloud, or network alerts.

## Impact

Because this is a practice case, there is no real business impact.

In a real environment, possible impact could include:

- Unauthorized account access
- Suspicious mailbox rule or forwarding
- Data exposure
- Follow-on phishing
- Unauthorized cloud file access
- Session persistence
- Broader account compromise pattern

## Likelihood

- [ ] Low
- [x] Medium
- [ ] High

Explain why:

> The likelihood is medium because successful unusual login, MFA activity, and suspicious mailbox activity are concerning, but user confirmation, session details, and full mailbox review are not available.

## Risk Rating

- [ ] Low
- [x] Medium
- [ ] High
- [ ] Critical

Explain why:

> The risk is medium because the account is not admin, but the activity pattern requires investigation before compromise can be ruled out.

## Recommended Action

| Priority | Recommendation | Reason | Approval Needed? |
|---|---|---|---|
| High | Escalate for investigation | Login, MFA, and mailbox activity require authorized review | Yes |
| High | Complete account compromise triage checklist | Ensures required SOC review steps are covered | No |
| High | Review login and MFA timeline in approved tools | Determines whether authentication pattern supports compromise | No |
| Medium | Review mailbox and cloud activity in approved tools | Identifies rules, forwarding, grants, or data access concerns | No |
| Medium | Review endpoint and device context | Helps identify credential theft or device risk | No |
| Low | Document lessons learned after review | Improves future account compromise workflow | No |

## Human Approval Required

Mark any action that requires approval.

- [ ] Disable account
- [ ] Reset password
- [ ] Reset MFA
- [ ] Revoke sessions
- [ ] Remove device
- [ ] Remove mailbox rule or forwarding
- [ ] Remove OAuth grant or application access
- [ ] Block IP/domain/location/indicator
- [ ] Contact user/customer
- [ ] Escalate to another team or leadership
- [ ] Close incident
- [ ] Publish report
- [ ] Send external message

## Detection / Control Notes

- Existing detection: Practice identity risky sign-in alert
- Gap identified: User confirmation and MFA details are missing
- Gap identified: Mailbox activity details are incomplete
- Recommended improvement: Ensure account compromise alerts include login timeline, MFA result, device context, session details, mailbox activity, and related alerts
- Owner: Analyst / practice workflow
- Follow-up needed: Complete checklist and handoff review

## Final Finding Statement

> Based on the available simulated evidence, a possible account compromise alert was reviewed for successful unusual login, repeated MFA prompts, and suspicious mailbox activity. Because those indicators require authorized review, the analyst decision is to escalate for investigation. No account changes were made and no operational response action was taken.

## Closeout Review

Before closing this finding, confirm:

- [ ] Facts are separated from assumptions.
- [ ] Evidence supports the finding.
- [ ] Severity is reasonable.
- [ ] Impact is explained.
- [ ] Risk is not overstated.
- [ ] Recommended actions are safe and actionable.
- [ ] Approval-required actions are marked.
- [ ] No account changes were made without approval.
- [ ] Sensitive information is protected.

