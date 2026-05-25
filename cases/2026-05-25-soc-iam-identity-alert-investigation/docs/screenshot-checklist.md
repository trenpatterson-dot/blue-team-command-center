# Screenshot Status

| Screenshot | Status |
|---|---|
| 01-project-folder-structure | Complete |
| 02-event-viewer-security-filter-4625 | Complete |
| 03-failed-login-event-details-redacted | Complete |
| 04-successful-login-context-4624-filter | Complete |
| 05-account-policy-or-lockout-context | Complete |
| 06-query-notes-failed-login-analysis | Complete |
| 07-investigation-timeline | Complete |
| 08-public-private-boundary-check | Complete |


# Screenshot Checklist

Save screenshots in:

evidence/screenshots-public/

Use these filename bases without `.png`.

## Required Screenshots

### 01-project-folder-structure
Show the full project folder structure in File Explorer.

### 02-event-viewer-security-filter-4625
Show Windows Event Viewer filtered for failed login events, such as Event ID 4625.

### 03-failed-login-event-details-redacted
Show the failed login event details with usernames, hostnames, IP addresses, or sensitive values redacted if needed.

### 04-successful-login-context-4624-filter
Show successful login context, such as Event ID 4624, to demonstrate correlation.

### 05-account-policy-or-lockout-context
Show account/password/lockout policy context, such as `net accounts`, Local Security Policy, or sanitized IAM control notes.

### 06-query-notes-failed-login-analysis
Show the query/checklist file or SIEM query logic used to analyze failed authentication activity.

### 07-investigation-timeline
Show the investigation timeline from docs/investigation.md or a clean timeline table.

### 08-public-private-boundary-check
Show the separation between evidence/screenshots-public and evidence/raw-notes.

## Optional Screenshots

### 09-wazuh-security-events-failed-logins
Show Wazuh failed-login/security events if available.

### 10-wazuh-alert-details-identity-event
Show Wazuh alert details for the identity/authentication event if available.

### 11-entra-signin-log-concept
Show Microsoft Entra sign-in log concept, demo tenant, or sanitized learning screenshot if available.

### 12-final-readme-preview
Show the completed README preview before GitHub publishing.

## Screenshot Rules

- Do not publish real employer data.
- Do not publish customer data.
- Do not publish real usernames, emails, tenant names, tokens, or private IPs unless fully sanitized.
- Keep raw evidence in evidence/raw-notes only.
- Keep only sanitized screenshots in evidence/screenshots-public.
