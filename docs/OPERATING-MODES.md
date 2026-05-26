# Operating Modes



Blue Team Command Center is designed to work in different environments without changing its core purpose.



The system should help an analyst organize evidence, think clearly, document work, and prepare professional reports. It should not replace analyst judgment or take operational action without approval.



## Mode 1: Personal Lab Mode



Personal Lab Mode is used for home labs, coursework, portfolio projects, practice investigations, and controlled training environments.



Use this mode for:



- Wazuh labs

- TryHackMe or other training notes

- Bellevue-style reports

- Portfolio-safe documentation

- Practice incident response writeups

- Detection engineering notes

- GitHub-safe sanitized examples

- Interview story bank material



Allowed in this mode:



- Lab screenshots

- Practice logs

- Markdown reports

- Sanitized findings

- Local generated drafts

- AI-assisted summaries

- Framework mapping practice



Rules:



- Do not mix real employer data into lab folders.

- Keep private notes separate from public-ready documentation.

- Review all screenshots before sharing.

- Do not publish anything that includes personal, company, customer, or restricted information.



## Mode 2: Company-Safe Template Mode



Company-Safe Template Mode is used when working on company-owned equipment or inside an employer environment.



In this mode, Blue Team Command Center should be treated as a template and decision-support system only.



Use this mode for:



- Report structure

- Investigation checklists

- Playbook guidance

- Escalation questions

- Framework mapping

- Plain-English summaries

- Shift handoff structure

- Lessons learned structure



Do not use this mode to:



- Store restricted company evidence unless policy allows it

- Copy logs out of approved company systems

- Upload company data to personal tools

- Save customer data in personal folders

- Run unapproved scripts

- Take destructive action from this system

- Publish internal details externally



Company-sensitive data may include:



- Usernames

- Email addresses

- Hostnames

- IP addresses

- Ticket numbers

- Customer names

- Screenshots of internal tools

- Alert details from internal platforms

- Logs, packet captures, exports, or case notes



Safe usage example:



> Use a template from this repository to structure an incident report, while keeping the real evidence inside the approved company ticketing, SIEM, EDR, or case-management system.



## Mode 3: Sanitized Export Mode



Sanitized Export Mode is used when turning private work, lab work, or completed investigations into safe public or career-facing material.



Use this mode for:



- GitHub-safe writeups

- LinkedIn posts

- Portfolio summaries

- Resume bullet drafts

- Interview stories

- Notion portfolio summaries

- Lessons learned without sensitive details



Before exporting, remove:



- Company names

- Usernames

- Emails

- Hostnames

- IP addresses

- Ticket IDs

- Customer information

- Internal tool screenshots

- Proprietary process details

- Any confidential or restricted information



Sanitized example:



Private wording:



> Investigated failed logins against user jsmith@company.com from 10.10.4.25 on HOST-FIN-022.



Safe public wording:



> Investigated repeated failed authentication activity against a user account using SIEM alert evidence. Reviewed timestamps, source behavior, target account context, and escalation criteria.



## Universal Rules Across All Modes



- Preserve evidence.

- Separate facts from assumptions.

- Clearly mark analyst interpretation.

- Identify missing information.

- Recommend safe next steps.

- Require human approval for operational actions.

- Do not claim that an action was taken unless it was confirmed.

- Keep writing clear, professional, and human.



## Human Approval Required



The following actions always require human approval:



- Blocking an IP address or domain

- Disabling an account

- Resetting a password

- Deleting or quarantining files

- Isolating an endpoint

- Contacting a user or customer

- Escalating to leadership

- Closing an incident

- Publishing a report

- Sending an external message

