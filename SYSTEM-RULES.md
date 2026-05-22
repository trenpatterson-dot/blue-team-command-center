# System Rules

These rules apply to every case, template, playbook, checklist, output, and optional script in Blue Team Command Center.

## Human Approval Rules

Human approval is required before any action that could affect users, systems, evidence, business operations, legal handling, or external communication.

Do not perform or automate these actions without explicit human approval:

- Delete, quarantine, encrypt, modify, or move evidence.
- Block domains, IP addresses, hashes, senders, accounts, or devices.
- Isolate hosts or remove systems from a network.
- Disable, reset, lock, unlock, or modify user accounts.
- Send emails, notifications, chat messages, tickets, reports, or public posts.
- Close, downgrade, escalate, or reassign incidents in official systems.
- Change firewall, EDR, SIEM, identity, cloud, endpoint, email, or production settings.
- Upload company evidence to external services.
- Store restricted company evidence in this folder.

## Evidence Rules

- Do not invent evidence.
- Label unknowns clearly.
- Keep known facts separate from analyst interpretation.
- Preserve source references when permitted.
- Store company evidence only in approved company systems unless policy explicitly permits local storage.
- Do not store secrets, credentials, tokens, private keys, passwords, recovery codes, or API keys.
- Do not copy restricted company data into example cases or public-ready outputs.

## Documentation Rules

- Use relative paths only.
- Keep file names clear and portable.
- Use screenshot names without `.png` in notes, such as `failed-login-event-01`.
- Prefer Markdown files that can be opened in any text editor.
- Keep reports professional, plain, and defensible.
- Mark assumptions, gaps, and approval needs.

## Decision-Support Boundary

This system may:

- Summarize evidence.
- Organize timelines.
- Map findings to frameworks.
- Draft reports.
- Recommend next steps.
- Prepare escalation notes.

This system may not:

- Act as the official system of record unless formally approved.
- Take containment or remediation action.
- Send or publish anything.
- Override incident command, legal, HR, privacy, or company policy.

