# Phishing Email Triage

## Related Checklist

Use this checklist during phishing triage:

```text
checklists/phishing-triage-checklist.md

## Purpose

Review a reported or detected suspicious email and determine whether it appears benign, spam, phishing, credential theft, malware delivery, or business email compromise.

## When to Use

- A user reports a suspicious email.
- Email security tools flag a message.
- A mailbox receives suspicious links, attachments, or impersonation attempts.

## Required Evidence

- Approved message reference or email security case ID.
- Sender, reply-to, subject, and timestamp.
- URL and attachment references.
- Header analysis from approved tools.
- Delivery scope from approved tools.

## Triage Questions

- Was the message delivered to one user or many?
- Does the sender align with the claimed identity?
- Are links or attachments suspicious?
- Did any user click, reply, download, or authenticate?
- Is there evidence of mailbox rule creation or account compromise?

## Safe Investigation Steps

1. Review the message in the approved email security system.
2. Record sanitized sender, subject, and delivery details when permitted.
3. Inspect URLs, attachments, and headers using approved tools.
4. Check whether users interacted with the message.
5. Document findings and prepare recommended actions for approval.

## Escalation Criteria

- Credential harvesting page identified.
- Malware attachment or payload identified.
- Multiple recipients or executive impersonation.
- User submitted credentials, opened attachment, or approved MFA prompt.
- Similar messages continue arriving.

## Phishing Decision Points

Before closing or escalating a phishing case, confirm:

- [ ] Sender identity is reviewed
- [ ] Reply-to address is reviewed
- [ ] SPF, DKIM, and DMARC results are reviewed or marked unavailable
- [ ] URLs are reviewed safely or marked unavailable
- [ ] Attachments are reviewed safely or marked unavailable
- [ ] User interaction is confirmed or marked unavailable
- [ ] Similar messages are searched for or marked unavailable
- [ ] Facts are separated from assumptions
- [ ] Missing information is documented
- [ ] Approval-required actions are clearly marked

## Escalation Reminder

Escalation may be appropriate when:

- User clicked a suspicious link
- User entered credentials
- User opened a suspicious attachment
- SPF, DKIM, or DMARC results failed
- Sender impersonation is likely
- Multiple users received the message
- The email includes credential theft, malware delivery, or business email compromise indicators

Do not delete messages, block senders, reset passwords, revoke sessions, contact users, escalate, close, publish, or send messages without the proper human approval process.

## Report Output

Use `templates/PHISHING-ANALYSIS-REPORT.md`.

## Lessons Learned

- Did controls detect the message before user report?
- Were user reporting steps clear?
- Are detections or awareness material worth updating?

