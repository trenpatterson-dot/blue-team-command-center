# Executive Summary

This report provides a manager-friendly summary of the account compromise practice case.

This is a practice, lab, and simulated case. No real company, customer, user, host, IP, domain, ticket, internal system, raw log, screenshot, packet capture, binary, export, or private evidence is included.

## Report Details

**Case Title:** Account Compromise Practice Case
**Date Prepared:** 2026-05-26
**Prepared By:** Tren Patterson
**Status:** Portfolio draft / simulated evidence only
**Severity:** Medium
**Operating Mode:** Personal Lab

## Plain-English Summary

A simulated identity alert reported a successful login from an unusual location for a normal user account. The login was followed by repeated MFA prompts and suspicious mailbox activity. The alert requires analyst review before any account action.

No account changes were made. No password reset, MFA reset, session revocation, account disablement, user contact, external message, incident closure, publishing, or other operational action occurred.

## Business Impact

Because this is a practice case, there is no real business impact.

In a real environment, similar activity could matter because it may indicate:

- Unauthorized account access
- MFA fatigue or suspicious authentication
- Session hijacking
- Suspicious mailbox rules or forwarding
- Data exposure
- Follow-on phishing from the mailbox
- Unauthorized cloud access
- Broader account compromise pattern

## Current Risk Level

- [ ] Low
- [x] Medium
- [ ] High
- [ ] Critical

Explain why:

> The risk is medium because the account is not admin, but successful unusual login, repeated MFA prompts, and suspicious mailbox activity require investigation.

## What We Know

- This is a simulated practice case.
- A successful login from an unusual location was reported.
- Repeated MFA prompts were reported.
- Suspicious mailbox activity was reported.
- The account is a normal user account, not an admin account.
- All indicators are fake or documentation-safe.
- Evidence folders contain placeholder files only; no screenshots, logs, raw notes, or exports are present.
- No account changes were made.
- No response action has been taken.

## What We Do Not Know Yet

- Whether the user recognizes the login.
- Whether the location was expected.
- Whether MFA was approved, denied, or ignored.
- Whether a session or token was abused.
- Whether mailbox rules, forwarding, or suspicious sent mail occurred.
- Whether cloud data was accessed or shared.
- Whether similar alerts exist for other accounts.

## Recommended Next Steps

| Priority | Recommendation | Reason | Approval Needed? |
|---|---|---|---|
| High | Escalate for investigation | Login, MFA, and mailbox activity require authorized review | Yes |
| High | Complete account compromise triage checklist | Ensures the alert is reviewed consistently | No |
| Medium | Review identity, mailbox, cloud, and device context in approved tools | Determines scope and risk | No |
| Low | Capture lessons learned | Improves future account compromise handling | No |

## Approval Required

The following actions require human approval before they occur:

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

## Final Executive Statement

Based on the available simulated evidence, the possible account compromise alert should be escalated for investigation. It is not confirmed compromise, but the combined login, MFA, and mailbox indicators require review before any operational action is considered.

## Sanitization Reminder

This report contains only fictional and documentation-safe information. Before using this format for public, portfolio, or company-safe sharing, remove or generalize any real usernames, emails, hostnames, IP addresses, ticket IDs, customer information, internal screenshots, tool-specific internal details, cloud records, mailbox data, URLs, domains, exports, or private notes.

