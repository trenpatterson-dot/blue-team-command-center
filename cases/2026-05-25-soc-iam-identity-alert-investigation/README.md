\# SOC IAM Identity Alert Investigation



\## Overview



This project documents a SOC/IAM hybrid investigation of identity-based authentication activity. The goal is to show how a security analyst reviews failed logins, authentication patterns, access-control context, and identity-related alerts before making a clear triage decision.



This project is designed for SOC Analyst, Information Security Analyst, Security Operations Analyst, IAM Analyst, and Identity Security Analyst roles.



\## What This Project Demonstrates



\- Identity-based alert triage

\- Failed-login and authentication analysis

\- Access-control review concepts

\- IAM security thinking

\- Logging and event review

\- Analyst documentation

\- Public/private evidence handling

\- Clear security recommendations



\## Scenario



An identity-related alert indicates repeated failed authentication activity. The analyst reviews authentication logs, checks whether the behavior appears normal or suspicious, documents the investigation, and recommends identity-focused mitigations.



\## Key Skills Practiced



\- Reviewing failed login events

\- Comparing failed and successful authentication behavior

\- Understanding account lockout and MFA value

\- Reviewing least privilege and access control concerns

\- Documenting findings in a recruiter-readable format

\- Separating public portfolio evidence from private raw notes



\## Tools / Data Sources



This project may use sanitized lab evidence from:



\- Windows Event Viewer

\- Wazuh security events

\- Microsoft Entra ID sign-in log concepts

\- Local account policy review

\- Manual investigation notes

\- Sanitized screenshots



No real employer logs, private user data, customer data, or sensitive production information are included.



\## Investigation Summary



The investigation focuses on answering:



1\. What account or identity was involved?

2\. How many failed authentication attempts occurred?

3\. Was there a successful login after the failures?

4\. Was the source expected or unusual?

5\. Were there signs of brute force, password spraying, misconfiguration, or normal user error?

6\. What IAM controls would reduce risk?



\## Findings Summary



Findings are documented in `docs/findings.md`.



Expected finding themes include:



\- Repeated failed authentication attempts should be investigated for brute-force or password-spray behavior.

\- Successful login after multiple failures increases concern and requires correlation.

\- MFA, account lockout, conditional access, and least privilege reduce identity risk.

\- Clear logging is required for reliable SOC/IAM triage.



\## Evidence



Public screenshots are stored in:



`evidence/screenshots-public/`



Private notes and raw artifacts are stored locally only in:



`evidence/raw-notes/`



\## Public / Private Boundary



This repository is intended to be GitHub-safe.



Public:

\- Sanitized screenshots

\- Investigation summary

\- Findings

\- Queries/checklists

\- README



Private/local only:

\- Raw logs

\- Real usernames

\- Real emails

\- Real IP addresses

\- Employer/customer data

\- LinkedIn drafts

\- Supervisor-agent outputs


## Screenshot Evidence

| Screenshot | Purpose |
|---|---|
| `01-project-folder-structure.png` | Shows the project structure used for the investigation. |
| `02-event-viewer-security-filter-4625.png` | Shows Windows Security logs filtered for failed logon Event ID 4625. |
| `03-failed-login-event-details-redacted.png` | Shows redacted Event ID 4625 failed logon details. |
| `04-successful-login-context-4624-filter.png` | Shows successful logon Event ID 4624 review for correlation. |
| `05-account-policy-or-lockout-context.png` | Shows local account lockout and password policy context from `net accounts`. |
| `06-query-notes-failed-login-analysis.png` | Shows the identity/security event IDs used during triage. |
| `07-investigation-timeline.png` | Shows the investigation timeline and analyst notes. |
| `08-public-private-boundary-check.png` | Shows the public/private evidence boundary. |

Screenshots are stored in:

`evidence/screenshots-public/`


\## Project Status



In progress.

