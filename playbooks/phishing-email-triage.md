# Phishing Email Triage

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

## Report Output

Use `templates/PHISHING-ANALYSIS-REPORT.md`.

## Lessons Learned

- Did controls detect the message before user report?
- Were user reporting steps clear?
- Are detections or awareness material worth updating?

