# Company Equipment Safe Use

Use this guide when opening or using Blue Team Command Center on company-owned equipment or while working with company cases.

## Default Position

Assume this folder is a local drafting aid, not the official case record. Company evidence and official decisions should remain in approved company systems unless company policy explicitly permits another location.

## Safe Local Use

It is usually safer to use this folder for:

- Generic playbook lookup.
- Drafting sanitized language.
- Tracking investigation questions.
- Creating high-level summaries.
- Mapping work to frameworks.
- Preparing notes to paste into an approved ticket or case system.

## Do Not Store Locally by Default

Do not store these in this folder unless policy explicitly permits it:

- Raw logs.
- Screenshots.
- SIEM, EDR, identity, cloud, email, vulnerability, or audit exports.
- Packet captures.
- Email attachments or headers.
- Customer, employee, HR, legal, privacy, or regulated data.
- Internal hostnames, usernames, IP addresses, domains, asset IDs, or ticket details.
- Secrets, credentials, tokens, keys, passwords, certificates, or recovery codes.

## Local-Only Folder Guidance

If company policy permits temporary local notes, keep them out of Git by using ignored local-only locations such as:

- `local/`
- `private/`
- `cases/<case-name>/private/`
- `cases/<case-name>/private-notes/`

Do not use local-only folders as long-term storage for official records. Move approved final notes into the official system of record according to policy.

## Evidence References

Prefer references over copied evidence:

- Official case ID.
- Ticket ID.
- Alert ID.
- Approved evidence repository reference.
- SIEM, EDR, identity, or email security event reference.

Do not paste restricted fields when a reference is enough.

## Human Approval Boundary

This system may recommend next steps, but it must not perform or imply approval for operational action. Human approval is required before containment, remediation, account changes, blocking, deletion, notification, publication, or incident closure.

## Before Moving the Folder

- Confirm no private local notes are included.
- Confirm `outputs/` contains only approved sanitized drafts.
- Confirm case evidence folders contain only placeholders unless policy permits otherwise.
- Confirm `.gitignore` protections are still present.

