# Lessons Learned

This report captures what was learned from the account compromise practice case.

This is a practice, lab, and simulated case. No real company, customer, user, host, IP, domain, ticket, internal system, raw log, screenshot, packet capture, binary, export, or private evidence is included.

## Report Details

**Case Title:** Account Compromise Practice Case
**Date Prepared:** 2026-05-26
**Prepared By:** Tren Patterson
**Status:** Draft
**Operating Mode:** Personal Lab

## Plain-English Summary

This practice case tested the Blue Team Command Center workflow for account compromise triage. The case shows how to document risky sign-in activity, review MFA and authentication context, evaluate mailbox and cloud activity, separate facts from assumptions, and preserve human approval gates.

The main lesson is that a successful unusual login followed by MFA activity and mailbox changes should receive careful review before any account action occurs.

## What Happened

- A simulated risky sign-in / possible account compromise alert was documented.
- The alert described a successful login from an unusual location.
- Repeated MFA prompts were reported.
- Suspicious mailbox activity was reported.
- The account was a normal user account, not an admin account.
- Fake and documentation-safe indicators were used.
- No real evidence or private data was added.
- No account changes were made.
- No operational response action was taken.
- The analyst decision was to escalate for investigation.

## What Went Well

- The case linked to the account compromise playbook and checklist.
- The case separated known facts, assumptions, missing information, and analyst interpretation.
- IP values used reserved documentation-safe examples.
- Email and cloud activity were described without exports or private mailbox data.
- Human approval requirements were included throughout the case.
- The public/private evidence boundary was stated clearly.
- The final decision did not overstate the evidence.

## What Slowed the Investigation Down

- User confirmation was not available.
- MFA approval or denial details were not available.
- Session and token details were incomplete.
- Device compliance and known-device status were not available.
- Mailbox rule, forwarding, sent-mail, and deletion details were incomplete.
- Related phishing, endpoint, cloud, and network alerts were not available.

## Evidence Gaps

Evidence that would make the investigation stronger in an approved lab setting:

- Full login timeline
- MFA prompt and result details
- Session and token details
- Device compliance and known-device status
- Mailbox rule and forwarding review
- Suspicious sent-mail and deletion review
- OAuth grant and cloud application review
- Related alert search results
- Sanitized lab screenshot, only if reviewed and approved

## Detection Gaps

Possible detection improvements:

- Alert should clearly show the full login timeline.
- Alert should include MFA prompt results.
- Alert should identify new devices or user agents.
- Alert should show session and token context.
- Alert should link related mailbox and cloud events.
- Alert should identify whether similar activity exists across other accounts.

## Process Gaps

Possible process improvements:

- Require account sensitivity review.
- Require MFA activity review before disposition.
- Require mailbox and cloud activity review.
- Require endpoint and device context review.
- Require clear approval gates before account response actions.
- Require public/private boundary review before sharing.

## Recommended Improvements

| Priority | Improvement | Reason | Owner / Team | Approval Needed? |
|---|---|---|---|---|
| High | Complete account compromise checklist for every risky sign-in case | Ensures consistent review | Analyst | No |
| High | Require MFA review before final disposition | Determines whether MFA fatigue or suspicious approval occurred | Analyst | No |
| Medium | Document mailbox and cloud activity clearly | Helps identify persistence or data access | Analyst | No |
| Medium | Add approved-tool device context review | Helps validate expected versus suspicious access | Analyst | No |
| Low | Build a completed sample with sanitized lab evidence later | Strengthens practice workflow | Analyst | No |

## Playbook Updates Needed

- [ ] Failed login investigation
- [ ] Phishing email triage
- [ ] Suspicious PowerShell
- [ ] Malware alert triage
- [x] Account compromise
- [ ] Vulnerability finding
- [ ] Impossible travel
- [ ] Endpoint alert triage
- [ ] Other

Notes:

- The account compromise playbook should keep the workflow analyst-led and review-only.
- The playbook should clearly say that account disablement, password reset, MFA reset, session revocation, user contact, escalation, closure, publishing, or external messaging requires approval.

## Training / Knowledge Notes

Practice next:

- Risky sign-in timeline review
- MFA fatigue pattern review
- Session and token review
- Mailbox rule and forwarding review
- OAuth grant review
- Cloud file access review
- Benign versus suspicious location context
- Writing clear escalation rationale

## Human Approval Reminder

Any operational changes require approval, including:

- Disabling accounts
- Resetting passwords
- Resetting MFA
- Revoking sessions
- Removing devices
- Removing mailbox rules or forwarding
- Removing OAuth grants or application access
- Blocking IPs, domains, locations, or indicators
- Contacting users or customers
- Escalating to another team or leadership
- Closing incidents
- Publishing reports
- Sending external messages

## Final Lessons Learned Statement

The account compromise practice case confirmed that Blue Team Command Center can support a safe SOC-style identity investigation from intake to reporting. The key decision point is the combination of successful unusual login, repeated MFA prompts, and suspicious mailbox activity: when those indicators appear together, escalation for investigation is appropriate while operational actions remain behind human approval.

## Sanitization Reminder

This case uses fictional and documentation-safe information. Before using this format for public, portfolio, or company-safe sharing, remove or generalize any real company names, usernames, emails, hostnames, IP addresses, ticket IDs, customer information, internal screenshots, identity logs, mailbox records, cloud records, URLs, domains, exports, tool-specific internal details, or private notes.

