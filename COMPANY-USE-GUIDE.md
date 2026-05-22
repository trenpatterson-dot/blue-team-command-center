# Company Use Guide

Blue Team Command Center can support company work only when used within company policy. It should be treated as a personal drafting and organization aid unless the organization formally approves it as part of the incident workflow.

## Before Using on Company-Owned Equipment

Confirm:

- Local note-taking is allowed.
- Local storage of case notes is allowed.
- Local storage of screenshots, logs, exports, or artifacts is allowed.
- Copying material out of official tools is allowed.
- The folder location is approved.
- Retention, deletion, legal hold, privacy, and classification rules are understood.

If any item is unclear, keep evidence and case records in the approved company system only.

## Safe Use Pattern

Use this system to:

- Plan an investigation.
- Draft questions.
- Organize high-level notes.
- Prepare a sanitized report.
- Track missing information.
- Create copy and paste ready language for approved systems.

Also review `docs/company-equipment-safe-use.md` before using this folder for company-related work.

Avoid using this system to store:

- Raw logs.
- Screenshots with user data.
- Email headers or attachments.
- Customer data.
- Employee personal information.
- Secrets, credentials, tokens, or keys.
- Restricted, regulated, or legally sensitive material.

## Evidence Handling

Company evidence should stay in approved company systems unless policy explicitly permits another location. If local references are allowed, use pointers such as:

- Official case ID.
- SIEM alert ID.
- EDR console event ID.
- Ticket number.
- Approved evidence repository path.

Do not paste sensitive fields into this folder when a reference is enough.

## Operational Actions

This system may recommend actions, but it must not perform them. All containment, remediation, account, communication, and case-closure decisions require human approval from the correct role.

## Public or Portfolio Use

Before using any material outside the company:

- Remove company names unless approved.
- Remove hostnames, usernames, IPs, domains, ticket IDs, screenshots, logs, and internal tool names unless approved.
- Convert details into sanitized lab-style examples.
- Run `checklists/public-private-sanitization-checklist.md`.
- Review `docs/public-private-boundary.md`.
