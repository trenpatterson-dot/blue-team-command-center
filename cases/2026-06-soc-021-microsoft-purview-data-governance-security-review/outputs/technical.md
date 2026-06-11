# SOC-021 Technical Summary

## Case

Microsoft Purview Data Governance Security Review

## Objective

Review simulated Microsoft Purview findings for sensitive data exposure, access governance, classification, DLP coverage, insider risk indicators, and audit visibility across Microsoft 365.

## Scope

- SharePoint
- OneDrive
- Teams
- Exchange
- Sensitive information types
- Sensitivity labels
- Data Loss Prevention
- Retention consistency
- External sharing
- Audit logs

## Key Simulated Findings

| Finding | Count / Scope | Risk |
| --- | --- | --- |
| Sensitive HR files without labels | 9 files | High |
| Payroll files with broad SharePoint access | 6 files / 48-member group | High |
| Finance files with external OneDrive links | 4 files | High |
| Stale external links | 2 links over 90 days without review | High |
| DLP coverage gaps | OneDrive and Teams excluded | High |
| Inconsistent labels and retention | Similar HR content across locations | Medium |
| Recurring audit review not documented | Microsoft 365 activity | Medium |

## Risk Analysis

- Sensitive employee and payroll content may be accessible beyond business need.
- External sharing can outlive its approved purpose.
- Missing sensitivity labels weaken consistent handling and protection.
- Incomplete DLP coverage creates location-dependent controls.
- Inconsistent retention and classification reduce governance visibility.
- Missing recurring audit review can delay detection of risky changes.

The findings do not prove exfiltration, malicious insider activity, legal breach, regulatory noncompliance, or employee misconduct.

## Recommendations

1. Validate broad SharePoint access with authorized data owners.
2. Review and expire external links that lack a current approved purpose.
3. Pilot sensitivity labels for validated employee, payroll, tax, and bank data.
4. Extend DLP simulation to OneDrive and Teams.
5. Establish recurring access certification and external-sharing review.
6. Monitor audit logs for sharing, downloads, label changes, DLP overrides, guest access, and policy changes.
7. Define escalation paths to privacy, legal, compliance, HR, incident response, and Microsoft 365 administration.

## Security Controls

- Least-privilege access
- Need-to-know group design
- Sensitivity label governance
- DLP simulation before enforcement
- Approved exceptions and override review
- Audit logging and evidence preservation
- Change control and rollback planning
- Separation of analyst recommendations from legal or compliance decisions

## Final Determination

Elevated data governance risk requires prioritized owner review and control improvement. The evidence supports remediation but does not establish misuse or a reportable event.

## Evidence Boundary

This is a simulated lab/case study. It was not performed in a production tenant and does not claim tenant ownership, enterprise authority, production SOC employment, legal/compliance authority, or access to live customer or employee data.
