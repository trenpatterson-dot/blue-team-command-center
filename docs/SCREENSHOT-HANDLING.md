# Screenshot Handling



Screenshots are useful evidence, but they are also one of the easiest ways to accidentally expose sensitive information.



Blue Team Command Center ignores image files by default because screenshots may contain company, customer, user, system, or investigation details that should not be shared publicly.



## Why Screenshots Are Ignored by Default



Screenshots may include:



- Usernames

- Email addresses

- Hostnames

- IP addresses

- Ticket numbers

- Customer names

- Internal dashboards

- Alert details

- Security tool names

- File paths

- Timestamps tied to real events

- Private notes

- Company process details



Because of that, screenshots should be treated as sensitive evidence unless reviewed and approved.



## Default Rule



Do not commit screenshots by default.



Screenshots should stay local, private, or inside approved company systems unless they have been reviewed and approved for sharing.



## Company Work



For company-owned equipment or employer investigations:



- Keep screenshots inside approved company systems.

- Do not move screenshots to personal devices.

- Do not upload screenshots to personal AI tools.

- Do not commit screenshots to a personal repository.

- Do not include screenshots in public portfolio material.

- Follow company evidence-handling and data-retention rules.



Safe usage:



Use Blue Team Command Center templates to structure notes and reports, but keep the actual screenshot evidence inside the approved company ticketing, SIEM, EDR, case-management, or evidence platform.



## Personal Lab Work



For personal labs, screenshots may be used, but they still need review.



Before sharing lab screenshots, check for:



- Real account names

- Personal email addresses

- Browser tabs

- Desktop notifications

- File paths with your full name

- API keys or tokens

- Internal notes

- Unrelated private information

- Anything that looks like real customer or company data



## Approved Sanitized Screenshots



Only use screenshots publicly when they are intentionally reviewed and sanitized.



A sanitized screenshot should:



- Show only lab or demo data

- Avoid real usernames and emails

- Avoid personal file paths

- Avoid secrets or tokens

- Avoid private browser tabs

- Avoid unrelated desktop content

- Support the written finding or report

- Have a clear purpose



## Recommended Public Screenshot Folder



If screenshots are later approved for public use, place them in a clearly marked public-safe folder.



Recommended folder:



```text

evidence/screenshots-public/

```



That folder should only contain screenshots that were manually reviewed and approved.



## Screenshot Naming



Use clear names that explain what the screenshot proves.



Examples:



```text

failed-login-alert-overview

event-id-4625-details

source-ip-review

timeline-of-authentication-failures

phishing-header-review

endpoint-alert-process-tree

```



Avoid names that include:



- Real usernames

- Customer names

- Ticket numbers

- Hostnames

- IP addresses

- Company names



## Screenshot Review Checklist



Before using a screenshot, confirm:



- The screenshot supports the case or report.

- Sensitive information has been removed or blurred.

- The screenshot does not reveal company-only information.

- The screenshot does not reveal customer or personal data.

- The screenshot does not expose credentials, tokens, or secrets.

- The screenshot does not show unrelated browser tabs or desktop items.

- The screenshot is stored in the correct folder.

- The screenshot is safe for the intended audience.



## When Not to Use Screenshots



Do not use screenshots when:



- The screenshot includes sensitive company or customer data.

- The screenshot includes real credentials or tokens.

- The screenshot adds no evidence value.

- The written summary explains the point clearly enough.

- Company policy does not allow screenshot export.

- You are unsure whether the screenshot is safe.



## Safe Analyst Reminder



A screenshot is evidence, not decoration.



Only include screenshots when they help prove what happened, support the report, or make the investigation easier to understand.

