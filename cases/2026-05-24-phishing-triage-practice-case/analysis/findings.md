# Findings

Use this file to document the main finding from the phishing triage practice case.

This is a personal lab/practice case. No real company, customer, or restricted data is included.

## Finding Summary

**Case Title:** Phishing Triage Practice Case
**Date Reviewed:** 2026-05-24
**Analyst:** Tren Patterson
**Operating Mode:** Personal Lab
**Finding Status:** Draft

## Finding Title

Reported Suspicious Email Requires Phishing Triage Review

## Finding Type

- [ ] Authentication activity
- [x] Phishing
- [ ] Malware
- [ ] Endpoint alert
- [ ] Network activity
- [ ] Suspicious command execution
- [ ] Account compromise
- [ ] Vulnerability
- [ ] Policy violation
- [ ] Detection gap
- [ ] Process gap
- [ ] Other

## Severity

- [ ] Low
- [x] Medium
- [ ] High
- [ ] Critical

## Known Facts

- A suspicious email was selected for review.
- The case involves phishing triage.
- The case is being handled as a personal lab/practice case.
- No real company or customer data is included.
- User interaction has not been confirmed.
- Sender authentication results have not been confirmed.
- No deletion, blocking, password reset, session revocation, or user notification action has been taken.

## Evidence Supporting the Finding

| Evidence | Source / Location | What It Shows |
|---|---|---|
| Case summary | `../CASE.md` | Suspicious email is the focus of the investigation. |
| Timeline notes | `timeline.md` | Timeline gaps still need to be filled in. |
| Indicator notes | `indicators.md` | Sender, reply-to, authentication, URL, attachment, and user interaction details still need review. |
| Checklist | `checklists/phishing-triage-checklist.md` | Triage steps required before disposition. |

## Analyst Interpretation

- The email may be benign, spam, suspicious, phishing, credential phishing, malware delivery, or business email compromise-related depending on evidence.
- Sender identity, reply-to address, SPF, DKIM, DMARC, URLs, attachments, and user interaction are key decision points.
- User interaction would increase risk and may require escalation.
- The finding should remain medium severity until additional evidence supports lowering or raising the risk.

## Assumptions

- The email details are demo placeholders.
- The sender, recipient, URL, and attachment details are not real.
- The scenario is being used to practice SOC documentation and phishing triage workflow.
- No confirmed compromise has occurred based on the current evidence.

## Missing Information

- Sender address
- Reply-to address
- Subject line
- Email header details
- SPF result
- DKIM result
- DMARC result
- URL destination
- Attachment details
- User interaction status
- Similar-message scope

## Impact

The potential impact depends on whether the email was malicious and whether the user interacted with it.

Possible impact includes:

- Credential theft
- Malware delivery
- Account compromise
- Business email compromise risk
- User confusion or social engineering exposure
- Broader campaign exposure if multiple users received similar messages

At this stage, impact is limited because maliciousness and user interaction have not been confirmed.

## Likelihood

- [ ] Low
- [x] Medium
- [ ] High

Explain why:

> The email is suspicious enough to review, but there is not enough evidence yet to confirm phishing, credential theft, malware delivery, or user compromise.

## Risk Rating

- [ ] Low
- [x] Medium
- [ ] High
- [ ] Critical

Explain why:

> The risk is medium because suspicious emails can lead to credential theft or malware delivery, but the current practice evidence does not confirm malicious content or user interaction.

## Recommended Action

| Priority | Recommendation | Reason | Approval Needed? |
|---|---|---|---|
| High | Complete phishing triage checklist | Ensures sender, authentication, URLs, attachments, and user interaction are reviewed | No |
| High | Confirm user interaction status | Determines whether risk increased | No |
| High | Review sender and reply-to details | Helps identify impersonation or spoofing | No |
| Medium | Review SPF, DKIM, and DMARC results | Helps validate sender authenticity | No |
| Medium | Review URLs and attachments safely | Helps identify credential theft or malware delivery | No |
| Medium | Search for similar messages | Helps determine scope | No |
| Low | Document lessons learned after closeout | Improves future phishing workflow | No |

## Human Approval Required

Mark any action that requires approval.

- [ ] Delete messages from mailboxes
- [ ] Block sender/domain/IP
- [ ] Reset password
- [ ] Revoke sessions
- [ ] Disable account
- [ ] Contact user/customer
- [ ] Escalate to leadership
- [ ] Close incident
- [ ] Publish report
- [ ] Send external message

## Detection / Control Notes

Use this section if the finding shows a detection, logging, or process gap.

- Existing detection: Practice email security alert / user report
- Gap identified: Sender authentication, URL details, attachment details, and user interaction are not yet documented
- Recommended improvement: Capture sender, reply-to, SPF/DKIM/DMARC, URL destination, attachment details, user interaction, and similar-message scope
- Owner: Analyst / practice workflow
- Follow-up needed: Complete analyst summary and lessons learned

## Framework Mapping

Optional mapping if supported by evidence.

**MITRE ATT&CK:** T1566 - Phishing, if evidence supports phishing behavior
**NIST CSF:** Detect, Respond
**NIST SP 800-61:** Detection and Analysis
**CIS Controls:** Email and Web Browser Protections, Security Awareness and Skills Training
**Other:** Email security monitoring

## Final Finding Statement

> Based on the available practice evidence, a suspicious email was reviewed and documented. Maliciousness and user interaction have not been confirmed. Additional context is needed, including sender details, email authentication results, URL or attachment review, user interaction status, and similar-message scope.

## Closeout Review

Before closing this finding, confirm:

- [ ] Facts are separated from assumptions.
- [ ] Evidence supports the finding.
- [ ] Severity is reasonable.
- [ ] Impact is explained.
- [ ] Risk is not overstated.
- [ ] Recommended actions are safe and actionable.
- [ ] Approval-required actions are marked.
- [ ] Sensitive information is protected.
