# Case Handoff

## Handoff Status

**Case Title:** Account Compromise Practice Case
**Status:** Portfolio draft / Practice / Lab / Simulated
**Current Owner:** Tren Patterson
**Next Owner / Team:** Blue Team Command Center Practice
**Last Updated:** 2026-05-26
**Operating Mode:** Personal Lab

## Current Step

The account compromise practice case has been documented from intake through initial reporting. The final analyst decision is to escalate for investigation because successful unusual login, MFA activity, and suspicious mailbox activity require review.

## Completed So Far

- [x] Case created
- [x] Initial alert reviewed
- [x] Known facts documented
- [x] Timeline started
- [x] Indicators reviewed
- [x] Findings drafted
- [x] Analyst summary drafted
- [x] Executive summary drafted
- [x] Lessons learned drafted
- [x] Human approval items marked
- [x] Public/private boundary reviewed

## Known Facts

- This is a practice, lab, and simulated case.
- The case focuses on a risky sign-in / possible account compromise alert.
- A normal user account had a successful login from an unusual location.
- Repeated MFA prompts followed the unusual login.
- Suspicious mailbox activity was reported after the login.
- No real company, customer, user, host, IP, domain, ticket, internal system, raw log, screenshot, packet capture, binary, export, or private evidence is included.
- No account changes were made.
- No operational response action has been taken.

## Analyst Interpretation

- The activity is suspicious enough to require investigation because login, MFA, and mailbox indicators appear in sequence.
- Normal user status lowers admin privilege risk, but mailbox access can still create business and privacy concerns.
- Benign causes could include travel, VPN use, mobile network changes, or expected support activity.
- Suspicious causes could include stolen credentials, MFA fatigue, session hijacking, mailbox rule abuse, or unauthorized cloud access.
- The correct next decision is escalation for investigation, with response actions held for human approval.

## Assumptions

- All user, host, IP, domain, mailbox, and alert details are fictional or reserved examples.
- The practice identity alert is simulated.
- No real evidence has been copied into this case folder.
- Human approval would be required before any response action in a real environment.

## Missing Information

- User confirmation, if approved.
- Full login timeline.
- MFA approval, denial, or prompt details.
- Session and token details.
- Device compliance and known-device status.
- Mailbox rule, forwarding, deletion, and sent-mail details.
- Cloud file access or sharing activity.
- Related phishing, endpoint, identity, or cloud alerts.

## Evidence Collected

| Evidence | Location / Reference | Notes |
|---|---|---|
| Case summary | `CASE.md` | Main case intake and known facts |
| Timeline | `analysis/timeline.md` | Simulated event order and gaps |
| Indicators | `analysis/indicators.md` | Fake/sanitized account, login, MFA, mailbox, and network values |
| Findings | `analysis/findings.md` | Finding and risk logic |
| Analyst summary | `reports/analyst-summary.md` | Technical analyst report |
| Executive summary | `reports/executive-summary.md` | Manager-friendly report |
| Lessons learned | `reports/lessons-learned.md` | Workflow improvement notes |
| Evidence gap checklist | `EVIDENCE-NEEDED.md` | Placeholder-only evidence status and manual evidence needs |
| Checklist | `../../checklists/account-compromise-triage-checklist.md` | Required account compromise review steps |

## Open Questions

- Does the user recognize the login, if user contact is approved?
- Was the location expected due to travel, VPN, or mobile network behavior?
- Were MFA prompts approved, denied, or ignored?
- Was a session token created or reused suspiciously?
- Were mailbox rules, forwarding, or OAuth grants changed?
- Was any cloud file accessed, shared, or downloaded?
- Are other accounts showing the same source or behavior?

## Blockers

- Evidence folders currently contain only `.gitkeep` placeholders.
- No sanitized lab identity logs have been added.
- No screenshots have been added.
- No exports or raw notes are present.
- User contact has not been approved.
- Account action has not been approved.

## Recommended Next Step

| Priority | Next Step | Reason | Approval Needed? |
|---|---|---|---|
| High | Escalate for investigation through the approved process | Successful unusual login, MFA activity, and mailbox activity require review | Yes |
| High | Complete the account compromise triage checklist | Confirms login, MFA, email, cloud, endpoint, and location review | No |
| High | Review login and MFA timeline in approved tools | Determines whether authentication pattern supports compromise | No |
| Medium | Review mailbox and cloud activity in approved tools | Determines whether unauthorized access or persistence occurred | No |
| Low | Update lessons learned after review | Improves future account compromise workflow | No |

## Human Approval Required

No operational action is currently performed by this case.

The following require human approval before they occur:

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

## Safe Handoff Summary

This simulated account compromise case is ready for investigation handoff. The alert describes a successful unusual login followed by repeated MFA prompts and suspicious mailbox activity. Because those indicators require review, the analyst decision is to escalate for investigation. No account changes were made and no response action was taken.

## Final Reminder

Before committing or sharing:

- [x] Facts are separated from assumptions
- [x] Missing information is clear
- [x] Evidence location is documented safely
- [x] Approval-required actions are marked
- [x] Sensitive data is protected
- [x] The next analyst can continue without guessing

