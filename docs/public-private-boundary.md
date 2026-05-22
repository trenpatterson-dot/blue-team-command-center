# Public Private Boundary

Blue Team Command Center should be safe to publish only when it contains templates, playbooks, checklists, sanitized examples, and general guidance. Real company data belongs in approved company systems unless policy explicitly says otherwise.

## Public-Safe Content

The following content is generally safe for a public or portfolio repository when reviewed:

- Generic templates.
- Generic playbooks.
- Sanitized lab examples.
- Framework mapping notes.
- Empty evidence placeholder folders.
- Checklists that do not name a real company, person, system, or case.

## Private or Restricted Content

Do not commit or publish:

- Raw logs, SIEM exports, EDR exports, email headers, packet captures, audit exports, screenshots, attachments, or case evidence.
- Usernames, email addresses, employee names, customer names, hostnames, internal domains, IP addresses, ticket IDs, asset tags, serial numbers, or cloud account identifiers.
- Company names, tool names, internal process names, or architecture details when policy does not allow disclosure.
- Secrets, credentials, tokens, API keys, private keys, certificates, recovery codes, or passwords.
- Legal, HR, privacy, regulated, or customer-sensitive material.

## Boundary Rule

Use this repo for structure and sanitized reporting language. Use the approved system of record for real evidence and official case records.

## Sanitized Example Standard

A sanitized example should:

- Remove real names and identifiers.
- Use placeholder case IDs.
- Use generic source references, such as `approved SIEM alert reference`.
- Avoid exact timestamps if they could identify a real incident.
- Avoid screenshots unless they are purpose-built lab images.
- Label assumptions and missing information.

## Before Sharing Outside a Private Workspace

Review:

- `checklists/public-private-sanitization-checklist.md`
- `checklists/report-review-checklist.md`
- `docs/repo-readiness-checklist.md`

If the answer is unclear, treat the content as private.

