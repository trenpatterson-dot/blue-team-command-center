# Indicators

Use this file to document indicators reviewed during the phishing triage practice case.

This is a personal lab/practice case. No real company, customer, or restricted data is included.

## Indicator Summary

**Case Title:** Phishing Triage Practice Case  
**Date Reviewed:** 2026-05-24  
**Analyst:** Tren Patterson  
**Operating Mode:** Personal Lab  

## Indicator Table

| Indicator | Type | Source | Context | Status | Notes |
|---|---|---|---|---|---|
| Demo sender | Sender Display Name | Practice Email Alert / User Report | Claimed sender identity | Unknown | Needs sender verification |
| demo-sender@example.test | Sender Email Address | Practice Email Alert / User Report | Sending address placeholder | Unknown | Demo-only address |
| demo-replyto@example.test | Reply-To Address | Practice Email Alert / User Report | Reply destination placeholder | Unknown | Needs comparison against sender |
| Demo suspicious link | URL | Practice Email Body | Link included in message | Unknown | Needs safe review |
| Demo attachment | Attachment | Practice Email Body | Optional attachment placeholder | Unknown | Needs safe review if applicable |
| SPF result unavailable | Email Authentication | Practice Header Review | Sender validation result | Unknown | Needs header evidence |
| DKIM result unavailable | Email Authentication | Practice Header Review | Sender validation result | Unknown | Needs header evidence |
| DMARC result unavailable | Email Authentication | Practice Header Review | Sender validation result | Unknown | Needs header evidence |
| Demo recipient | Recipient | Practice User Report | Target of suspicious email | Known | Demo-only recipient |

## Known Good / Expected Indicators

- No known-good indicators have been confirmed yet.
- The recipient and sender details are demo placeholders.
- Authentication results are not available yet.
- URL and attachment status are not confirmed yet.

## Suspicious Indicators

Potentially suspicious indicators to review:

- Sender identity mismatch
- Reply-to mismatch
- Suspicious URL
- Unexpected attachment
- Failed SPF, DKIM, or DMARC
- Urgent or pressure-based language
- Credential request
- User interaction with link or attachment

## Unknown Indicators

- Actual sender reputation
- Actual reply-to relationship
- SPF result
- DKIM result
- DMARC result
- URL destination
- Attachment type
- Whether user clicked
- Whether user entered credentials
- Whether similar messages were received by others

## Indicator Questions

- Does the sender match the claimed organization?
- Does the reply-to address match the sender?
- Did SPF, DKIM, and DMARC pass?
- Does the link destination match the visible link text?
- Is the domain misspelled or impersonating a trusted brand?
- Is an attachment present?
- Is the attachment expected?
- Did the user interact with the message?
- Did other users receive similar messages?
- Does this require escalation?

## Safe Handling Notes

No real usernames, emails, domains, URLs, hostnames, IP addresses, ticket numbers, or company data are included in this practice case.

For a real company case, email evidence should stay inside approved company systems unless policy allows documentation elsewhere.

Do not click suspicious links directly from a live user environment.

Do not open suspicious attachments outside approved analysis tools.

## Recommended Next Steps

| Priority | Recommendation | Reason | Approval Needed? |
|---|---|---|---|
| High | Confirm user interaction status | Determines risk and response path | No |
| High | Review sender and reply-to details | Helps identify spoofing or impersonation | No |
| High | Review SPF, DKIM, and DMARC results | Helps validate sender authenticity | No |
| Medium | Review URLs safely | Identifies credential theft or malicious destination risk | No |
| Medium | Review attachment safely if present | Identifies malware delivery risk | No |
| Medium | Search for similar messages | Determines scope | No |
| Low | Document indicators in analyst summary | Supports clean reporting | No |

## Closeout Review

Before closing this section, confirm:

- [ ] Sender details are documented.
- [ ] Reply-to address is reviewed or marked unavailable.
- [ ] SPF, DKIM, and DMARC are reviewed or marked unavailable.
- [ ] URLs are reviewed safely or marked unavailable.
- [ ] Attachments are reviewed safely or marked unavailable.
- [ ] User interaction is confirmed or marked unavailable.
- [ ] Similar-message scope is checked or marked unavailable.
- [ ] Sensitive indicators are protected.
- [ ] Any blocking, deletion, reset, or user-contact action is marked as requiring approval.