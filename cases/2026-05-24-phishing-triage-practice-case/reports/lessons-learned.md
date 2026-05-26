# Lessons Learned

This report captures what was learned from the phishing triage practice case.

This is a personal lab/practice case. No real company, customer, or restricted data is included.

## Report Details

**Case Title:** Phishing Triage Practice Case
**Date Prepared:** 2026-05-24
**Prepared By:** Tren Patterson
**Status:** Draft
**Operating Mode:** Personal Lab

## Plain-English Summary

This practice case was used to test the Blue Team Command Center workflow for phishing triage. The case helped validate the structure for documenting sender review, email authentication checks, URL and attachment review, user interaction, similar-message scope, analyst reporting, executive reporting, and safe next steps.

The main lesson is that phishing triage depends heavily on context. A suspicious email should not be classified too quickly without reviewing sender details, reply-to address, authentication results, URLs, attachments, and whether the user interacted with the message.

## What Happened

- A reusable case template was copied into a new phishing triage practice case.
- The case was documented in Personal Lab Mode.
- A suspicious email scenario was written using demo-only details.
- Known facts, assumptions, and missing information were separated.
- Timeline, indicators, findings, analyst summary, and executive summary were drafted.
- No real company or customer data was used.
- No operational response action was taken.

## What Went Well

- The reusable case template supported the phishing workflow cleanly.
- The case separated facts, assumptions, and missing information.
- The checklist created a clear review path.
- The analyst summary captured technical triage needs.
- The executive summary explained risk in plain English.
- Human approval requirements were included throughout the case.
- The workflow avoided implying unapproved action.

## What Slowed the Investigation Down

- The case used placeholder evidence instead of real lab email headers.
- Sender and reply-to details were not fully available.
- SPF, DKIM, and DMARC results were not available.
- URL and attachment details were not available.
- User interaction was unknown.
- Similar-message scope could not be confirmed.

## Evidence Gaps

Evidence that would make the investigation stronger:

- Full email headers
- Sender address
- Reply-to address
- Subject line
- Message body summary
- URL destination details
- Attachment file name and type
- SPF, DKIM, and DMARC results
- User interaction status
- Similar-message search results

## Detection Gaps

Possible detection improvements:

- Alert should show sender and reply-to mismatch.
- Alert should include SPF, DKIM, and DMARC results.
- Alert should identify suspicious URLs.
- Alert should identify risky attachments.
- Alert should show whether the user clicked.
- Alert should show whether similar messages were delivered to other users.

## Process Gaps

Possible process improvements:

- Add a required user-interaction check.
- Add a required sender/reply-to comparison step.
- Add a required authentication-results review step.
- Add clear escalation criteria for credential phishing.
- Add guidance for safe URL and attachment review.
- Add guidance for similar-message scope checks.

## Recommended Improvements

| Priority | Improvement | Reason | Owner / Team | Approval Needed? |
|---|---|---|---|---|
| High | Add user interaction status to future phishing cases | Interaction changes risk | Analyst | No |
| High | Add sender and reply-to comparison | Helps identify spoofing or impersonation | Analyst | No |
| Medium | Add SPF, DKIM, and DMARC review | Helps validate sender authenticity | Analyst | No |
| Medium | Add safe URL and attachment review | Helps identify credential theft or malware delivery | Analyst | No |
| Low | Build a completed sample with sanitized email evidence later | Strengthens portfolio evidence | Analyst | No |

## Playbook Updates Needed

- [ ] Failed login investigation
- [x] Phishing email triage
- [ ] Suspicious PowerShell
- [ ] Malware alert triage
- [ ] Vulnerability finding
- [ ] Account compromise
- [ ] Impossible travel
- [ ] Endpoint alert triage
- [ ] Other

Notes:

- The phishing playbook should require review of sender, reply-to, SPF, DKIM, DMARC, URLs, attachments, user interaction, and similar-message scope.
- The playbook should clearly say that deletion, blocking, password reset, session revocation, user contact, escalation, closure, publishing, or external messaging requires approval.

## Training / Knowledge Notes

Practice next:

- Email header review
- SPF, DKIM, and DMARC interpretation
- Safe URL review
- Attachment risk review
- Credential phishing triage
- Business email compromise indicators
- Writing short executive summaries from phishing findings

## Human Approval Reminder

Any operational changes still require approval, including:

- Deleting messages from mailboxes
- Blocking sender/domain/IP
- Resetting passwords
- Revoking sessions
- Disabling accounts
- Contacting users or customers
- Escalating to leadership
- Closing incidents
- Publishing reports
- Sending external messages

## Final Lessons Learned Statement

The phishing triage practice case confirmed that the Blue Team Command Center workflow can support a clean SOC-style phishing review from intake to reporting. The next improvement is to test the workflow with sanitized lab email evidence so the case includes realistic sender, header, URL, attachment, and interaction details without exposing sensitive data.

## Sanitization Reminder

This case uses demo-only information. Before using this format for public, portfolio, or company-safe sharing, remove or generalize any real company names, usernames, emails, hostnames, IP addresses, ticket IDs, customer information, internal screenshots, tool-specific internal details, or private notes.