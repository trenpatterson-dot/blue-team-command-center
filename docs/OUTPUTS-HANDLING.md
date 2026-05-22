\# Outputs Handling



The `outputs/` folder is for generated drafts, temporary reports, exports, and working files.



By default, `outputs/` should be treated as local-only and private.



\## Purpose



Use `outputs/` for:



\- Draft reports

\- AI-assisted summaries

\- Temporary exports

\- Working notes

\- Generated Markdown

\- Generated Word or PDF files

\- Sanitization drafts

\- Review copies

\- Case closeout drafts



\## Default Rule



Do not commit `outputs/` content by default.



Generated outputs may contain sensitive details, unfinished reasoning, internal notes, or unreviewed wording.



Only commit an output file if it has been manually reviewed and is safe for the intended audience.



\## Why Outputs Are Local-Only



Outputs may include:



\- Raw case details

\- Company-sensitive information

\- Usernames

\- Hostnames

\- IP addresses

\- Ticket numbers

\- Internal tool names

\- Private analyst notes

\- Draft conclusions

\- Unverified assumptions

\- AI-generated wording that needs review



Because of that, outputs should not be treated as publish-ready.



\## What Belongs in Outputs



Good examples:



```text

outputs/draft-incident-summary.md

outputs/executive-summary-review-copy.md

outputs/sanitized-github-summary-draft.md

outputs/lessons-learned-draft.md

outputs/case-closeout-review.md

