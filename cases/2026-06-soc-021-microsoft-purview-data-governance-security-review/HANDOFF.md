# HANDOFF: SOC-021 Microsoft Purview Data Governance Security Review

## Project

SOC-021: Microsoft Purview Data Governance Security Review

## Status

Documentation complete. Authorized stakeholder review is required before using the recommendations as implementation or policy guidance.

## Goal

Present a recruiter-ready security risk review covering Microsoft Purview, sensitive data discovery, access governance, Data Loss Prevention, insider risk considerations, and Microsoft 365 audit visibility.

## Scenario

Simulated Purview-style findings identify employee and payroll data across SharePoint, OneDrive, Teams, and Exchange with broad access, external sharing, missing sensitivity labels, inconsistent retention, and DLP coverage gaps.

## Deliverables

- [Case README](README.md)
- [ELI10 summary](outputs/eli10.md)
- [Technical summary](outputs/technical.md)
- [Executive summary](outputs/executive-summary.md)
- [LinkedIn draft](outputs/linkedin.md)
- [OneNote notes](outputs/onenote.md)

## Key Findings for Review

1. Nine simulated sensitive files lack sensitivity labels.
2. Six payroll or compensation files are available to a broad SharePoint group.
3. Four finance-related OneDrive files have external links; two links are stale.
4. DLP coverage excludes OneDrive and Teams in the simulated environment.
5. Equivalent HR content has inconsistent labels and retention settings.
6. Audit events are available, but no recurring review process is documented.

## Authorized Review Questions

1. Do the sensitive information type matches represent valid employee, payroll, tax, or bank data?
2. Which users and groups have a documented business need?
3. Are external recipients and sharing purposes current and approved?
4. Which sensitivity and retention labels are authorized for each data category?
5. Should DLP rules remain in simulation mode or proceed to a controlled pilot?
6. Are audit logs retained and reviewed according to approved requirements?
7. Does any evidence require privacy, legal, compliance, HR, or incident response escalation?

## Recommended Handoff Path

- Data owners validate content category and business need.
- Microsoft 365 administrators validate permissions and configuration.
- Security analysts review exposure, audit activity, and DLP signals.
- Privacy, legal, compliance, and HR stakeholders interpret applicable obligations and employee-related concerns.
- Authorized change owners approve and implement remediation.

## Decision Boundary

The analyst can identify risk, evidence gaps, and security recommendations. The analyst does not independently declare a legal breach, regulatory violation, employee misconduct, retention requirement, or final compliance status.

## Evidence Boundary

This handoff uses simulated, sanitized metadata only. It does not claim production SOC employment, tenant ownership, enterprise authority, legal/compliance authority, or access to live customer or employee data.
