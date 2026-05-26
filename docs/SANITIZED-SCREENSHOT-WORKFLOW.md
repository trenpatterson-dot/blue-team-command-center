# Sanitized Screenshot Workflow



Use this workflow before adding screenshots to any case, report, portfolio writeup, or public-facing material.



Screenshots are useful evidence, but they can expose sensitive information fast. Treat screenshots as evidence first, not decoration.



## Default Rule



Screenshots are ignored by default.



Do not commit screenshots unless they have been reviewed, sanitized, and approved for the intended audience.



## Use This Workflow For



- Lab screenshots

- Case evidence screenshots

- SIEM alert screenshots

- EDR screenshots

- Email security screenshots

- Terminal screenshots

- Report screenshots

- Portfolio screenshots

- GitHub-safe images



## Do Not Share Screenshots That Show



- Real usernames

- Email addresses

- Hostnames

- IP addresses

- Ticket numbers

- Customer names

- Company names

- Internal dashboards

- Internal tool URLs

- Case IDs

- Browser tabs with private info

- Desktop notifications

- File paths with personal/private info

- API keys, tokens, passwords, or secrets

- Company-sensitive detection logic

- Restricted evidence



## Screenshot Review Steps



Before using a screenshot:



1. Confirm the screenshot has a purpose.

2. Confirm the screenshot supports a finding, report, or workflow.

3. Remove or blur sensitive data.

4. Crop unrelated desktop or browser content.

5. Remove browser tabs if they are not needed.

6. Remove personal or company identifiers.

7. Confirm no secrets or tokens are visible.

8. Confirm no real customer or user data is visible.

9. Confirm the screenshot matches the written explanation.

10. Confirm the screenshot is safe for the intended audience.



## Audience Levels



### Private Case Use



Allowed only if policy allows it.



Used for:



- Internal case notes

- Lab evidence

- Local-only review

- Private investigation records



Do not commit by default.



### Company-Safe Use



Allowed only inside approved company systems.



Used for:



- Approved internal tickets

- Approved internal reports

- Approved incident documentation



Do not move to personal systems unless policy allows it.



### Public / Portfolio Use



Allowed only after sanitization.



Used for:



- GitHub

- LinkedIn

- Portfolio writeups

- Interview stories

- Public documentation



Must contain demo, lab, or fully sanitized data only.



## Recommended Public-Safe Folder



If approved sanitized screenshots are ever added, use a clearly named folder:



```text

evidence/screenshots-public/
```
