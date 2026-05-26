# Phishing Triage Practice Case

## Case Overview

**Case Title:** Phishing Triage Practice Case
**Case ID / Ticket Reference:** Practice Case
**Date Opened:** 2026-05-24
**Date Closed:**
**Analyst:** Tren Patterson
**Team / Queue:** Blue Team Command Center Practice
**Status:** Active
**Severity:** Medium
**Operating Mode:** Personal Lab

## Alert / Source Information

**Alert Name:** Reported Suspicious Email
**Source System:** Practice Email Security Alert / User Report
**Detection Tool:** Blue Team Command Center Practice Case
**Alert Time:** TBD
**Reviewed Time:** TBD
**Timezone:** Local
**Related Playbook:** `playbooks/phishing-email-triage.md`
**Related Checklist:** `checklists/phishing-triage-checklist.md`

## Impacted Entities

Only demo/lab details are used in this practice case.

**User / Account:** Demo recipient
**Host / Device:** Not applicable
**IP Address:** Demo sending source
**Domain / URL:** Demo suspicious link
**File / Hash:** Demo attachment, if applicable
**Application / Service:** Email
**Business Unit / Owner:** Lab / practice environment

## Initial Summary

This practice case reviews a reported suspicious email using a SOC-style phishing triage workflow. The goal is to document sender details, email authentication results, URLs, attachments, user interaction, known facts, assumptions, missing information, and safe next steps.

## Known Facts

- A suspicious email was selected for review.
- The case involves phishing triage.
- The investigation is being documented as a personal lab/practice case.
- No real company, customer, or sensitive data is being used.
- No deletion, blocking, password reset, or user notification action has been taken.

## Analyst Interpretation

- The message may be benign, spam, phishing, credential phishing, malware delivery, or business email compromise-related depending on evidence.
- Sender identity, reply-to address, authentication results, URLs, attachments, and user interaction need review.
- The case should not be classified as malicious until supporting evidence is documented.

## Assumptions

- The email details are demo placeholders.
- The recipient and sender are not real company users.
- The suspicious email scenario is being used for SOC workflow practice.

## Missing Information

- Sender address
- Reply-to address
- Subject line
- Email authentication results
- URL destination
- Attachment details
- Whether the user clicked a link
- Whether the user entered credentials
- Whether similar messages were sent to other users

## Evidence Collected

| Evidence Type | Location / Reference | Notes |
|---|---|---|
| Alert | TBD | Practice phishing alert summary |
| Email | TBD | Suspicious email details |
| Header | TBD | Header review pending |
| URL | TBD | Safe URL review pending |
| Attachment | TBD | Attachment review pending if applicable |
| Other | `analysis/timeline.md` | Timeline will be built during analysis |

Do not place restricted evidence in this folder unless policy allows it.

## Timeline Reference

Use:

```text
analysis/timeline.md
```
