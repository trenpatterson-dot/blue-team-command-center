# SOC-021 OneNote Notes

## Project

SOC-021: Microsoft Purview Data Governance Security Review

## Main Goal

Review simulated Microsoft Purview findings and turn them into evidence-based data governance and security recommendations.

## What I Practiced

- Reviewing sensitive information types
- Assessing sensitivity label coverage
- Identifying broad SharePoint access
- Reviewing external OneDrive links
- Evaluating Data Loss Prevention gaps
- Considering insider risk without assuming malicious intent
- Identifying Microsoft 365 audit log needs
- Recommending access governance and recurring review
- Separating security analysis from legal, compliance, privacy, and HR authority

## Simulated Findings

- 9 sensitive HR files without labels
- 6 payroll files shared with a 48-member SharePoint group
- 4 finance files with external OneDrive links
- 2 stale external links
- OneDrive and Teams excluded from simulated DLP coverage
- Inconsistent labels and retention across similar HR content
- No documented recurring audit review

## Review Memory Aid

1. Identify the data category.
2. Confirm the Microsoft 365 location.
3. Review labels and retention.
4. Review users, groups, guests, and links.
5. Check DLP coverage and overrides.
6. Review available audit logs.
7. Document evidence gaps.
8. Rate the security risk.
9. Recommend owner review and control improvements.
10. Escalate legal, compliance, privacy, HR, or incident questions to authorized stakeholders.

## Main Lesson

Microsoft Purview can improve visibility, but data governance still depends on clear ownership, consistent labels, least-privilege access, DLP tuning, audit review, and authorized human decisions.

## Evidence Boundary

This is a lab/case study using simulated, sanitized metadata. It does not represent a production tenant, live customer or employee data, tenant ownership, enterprise authority, legal/compliance authority, or production SOC employment.
