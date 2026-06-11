# SOC-021: Microsoft Purview Data Governance Security Review

## Case Type

Lab / case study using realistic simulated Microsoft Purview-style evidence.

## Recruiter Snapshot

This case demonstrates how a security analyst could review Microsoft 365 data governance risk across SharePoint, OneDrive, Teams, and Exchange. The review identifies sensitive information exposure, risky sharing, missing sensitivity labels, inconsistent retention, Data Loss Prevention gaps, and audit visibility needs.

The analyst documents security risk and recommendations. Authorized data owners, privacy, legal, compliance, HR, and business leaders retain authority for policy interpretation, employee matters, regulatory conclusions, and final remediation approval.

## Case Files

- [Analyst handoff](HANDOFF.md)
- [ELI10 summary](outputs/eli10.md)
- [Technical summary](outputs/technical.md)
- [Executive summary](outputs/executive-summary.md)
- [LinkedIn draft](outputs/linkedin.md)
- [OneNote notes](outputs/onenote.md)

## Review Objective

Assess simulated Microsoft Purview findings to identify where sensitive business and employee data may be exposed, overshared, inconsistently classified, or insufficiently monitored. Produce evidence-based security recommendations for access governance, sensitivity labels, Data Loss Prevention, audit review, and escalation.

## Environment Assumptions

- The organization uses Microsoft 365 services including SharePoint, OneDrive, Teams, and Exchange.
- Microsoft Purview-style content scans and reports provide metadata about locations, sensitive information types, labels, sharing, retention, and policy matches.
- All organizations, users, sites, files, counts, and findings in this case are simulated.
- The analyst has review-only access to sanitized findings, not unrestricted access to document contents.
- No live customer, employee, payroll, legal, health, or identity data is included.
- Any production policy change would require testing, change control, data-owner review, and authorized approval.
- This review provides security analysis, not legal, privacy, HR, or regulatory advice.

## Data Governance Scenario

A simulated organization has grown its Microsoft 365 usage without applying consistent data classification and access governance. A Microsoft Purview-style risk review identifies sensitive employee and business documents in collaboration locations with mixed labeling, broad access, external sharing, and incomplete DLP coverage.

Review scope:

| Service | Simulated Location | Review Focus |
| --- | --- | --- |
| SharePoint | `HR-Collaboration-Lab` | Broad membership, payroll exports, missing labels |
| OneDrive | `Finance-Analyst-Lab` | External sharing and stale links |
| Teams | `People-Operations-Lab` | File inheritance and guest access |
| Exchange | `Payroll-Notifications-Lab` | Sensitive attachments and DLP coverage |

## Sensitive Data Types Reviewed

The simulated review uses category-level findings rather than exposing actual sensitive values:

- Employee identifiers
- Government-issued identifier patterns
- Bank account and routing number patterns
- Payroll and compensation data
- HR case and performance documents
- Personal contact information
- Tax-related documents
- Confidential business forecasts

These are Microsoft Purview-style sensitive information types or business data categories for risk-review purposes. A pattern match alone does not prove that a document contains valid regulated data; authorized reviewers must validate context.

## Evidence Reviewed

- Simulated Microsoft Purview content explorer summary
- Simulated sensitive information type match counts
- Sensitivity label coverage report
- DLP policy match and location coverage summary
- SharePoint and OneDrive sharing report
- Teams guest and membership summary
- Microsoft 365 audit log review checklist
- Retention and classification consistency summary
- Sanitized file metadata such as location, owner role, sharing state, label state, and last modified date

No raw sensitive values, document contents, real user records, tenant identifiers, or live audit exports were used.

## Purview-Style Findings

| ID | Simulated Finding | Evidence Summary | Initial Risk |
| --- | --- | --- | --- |
| `PUR-021-01` | Employee identifier files lack labels | 14 HR-related files matched employee identifier patterns; 9 had no sensitivity label | High |
| `PUR-021-02` | Payroll documents are broadly accessible | 6 payroll or compensation files were available to a SharePoint group with 48 members | High |
| `PUR-021-03` | OneDrive files retain external links | 4 finance-related files had active external sharing links; 2 had not been reviewed in over 90 days | High |
| `PUR-021-04` | Classification is inconsistent | Similar HR documents used `Confidential`, `General`, or no label | Medium |
| `PUR-021-05` | DLP coverage is incomplete | The simulated DLP policy covered Exchange and SharePoint but not OneDrive or Teams | High |
| `PUR-021-06` | Retention settings vary by location | Payroll-related content had different or missing retention settings across SharePoint and Teams | Medium |
| `PUR-021-07` | Audit review is not routine | External sharing and label changes were logged, but no recurring review process was documented | Medium |

### Simulated Evidence Detail

```json
{
  "review_id": "SOC-021-PURVIEW-LAB",
  "case_type": "lab_case_study",
  "locations": ["SharePoint", "OneDrive", "Teams", "Exchange"],
  "findings": {
    "sensitive_files_reviewed": 24,
    "unlabeled_sensitive_files": 9,
    "broadly_shared_payroll_files": 6,
    "externally_shared_finance_files": 4,
    "stale_external_links": 2,
    "dlp_uncovered_locations": ["OneDrive", "Teams"]
  },
  "data_handling": {
    "raw_sensitive_values_collected": false,
    "live_customer_data_used": false,
    "tenant_id_included": false
  },
  "determination_status": "analyst_risk_review_complete",
  "policy_decision_status": "authorized_owner_review_required"
}
```

## Risk Analysis

### High-Risk Themes

- Payroll, employee identifier, or financial files can create material confidentiality risk when access is broader than business need.
- External OneDrive links may allow continued access after the original collaboration purpose has ended.
- Missing sensitivity labels reduce consistent handling, protection, and reporting.
- DLP gaps across OneDrive and Teams can create uneven control coverage.

### Medium-Risk Themes

- Inconsistent labels and retention settings make governance outcomes dependent on location or user behavior.
- Missing recurring audit review can allow risky sharing or classification changes to remain unnoticed.
- Guest and group-based access can expand over time without periodic recertification.

### Risk Limitations

The simulated findings show exposure indicators, not confirmed misuse, exfiltration, policy violation, legal breach, or regulatory noncompliance. The analyst does not make those determinations from metadata alone.

## Access and Sharing Concerns

- The 48-member SharePoint group appears broader than the expected payroll need-to-know group.
- External OneDrive links require owner, recipient, business-purpose, and expiration review.
- Teams-connected SharePoint permissions may inherit access that content owners do not fully understand.
- Guest access should be mapped to an approved sponsor and review date.
- Shared links should use the least-permissive option appropriate to the approved business need.
- Access governance should include periodic recertification, owner accountability, and removal of stale access.

The analyst recommends review; the analyst does not remove access or determine employment consequences.

## Data Classification / Labeling Recommendations

1. Define a small, understandable sensitivity label set aligned to approved data categories.
2. Apply a high-protection label to validated payroll, employee identifier, tax, and bank data.
3. Require label justification when users lower or remove a label.
4. Pilot recommended or automatic labeling before broad enforcement.
5. Validate false positives and business workflows with data owners.
6. Track unlabeled sensitive content and label exceptions through a documented review queue.
7. Train content owners on the difference between sensitivity labels, retention labels, and access permissions.

Example label model for discussion:

| Proposed Label | Example Use | Security Handling |
| --- | --- | --- |
| Public | Approved public material | No confidentiality restriction |
| General | Routine internal collaboration | Internal access by default |
| Confidential | Business-sensitive content | Restricted sharing and monitored access |
| Highly Confidential - Employee Data | Payroll, tax, and validated employee identifiers | Need-to-know access, external sharing restrictions, and enhanced review |

This model is a security recommendation, not an approved organizational policy.

## DLP Policy Recommendations

- Extend Data Loss Prevention coverage consistently across Exchange, SharePoint, OneDrive, and Teams.
- Start new DLP rules in test or simulation mode.
- Use sensitive information types, confidence levels, content context, and approved exceptions.
- Alert on high-confidence employee identifier, payroll, tax, or bank-data sharing outside approved boundaries.
- Provide user policy tips where appropriate without exposing sensitive values.
- Route high-severity DLP alerts to an approved security or compliance review queue.
- Document override reasons and review repeated overrides for control tuning.
- Measure false positives, false negatives, user impact, and uncovered locations before enforcement.
- Do not automatically treat a DLP match as malicious insider activity.

## Insider Risk Considerations

Risk indicators may include unusual download volume, repeated external sharing, access outside job need, label downgrades, or attempts to bypass DLP controls. These signals require context and should not be treated as proof of malicious intent.

Any insider risk review should:

- Use approved role-based access and case-management boundaries.
- Minimize exposure of employee identity until authorized review requires it.
- Correlate activity with business context and other evidence.
- Avoid automated accusations or employment conclusions.
- Involve authorized HR, privacy, legal, compliance, or management stakeholders according to policy.
- Document the difference between anomalous activity, policy concern, and confirmed misuse.

## Compliance and Audit Visibility

The security review recommends verifying that Microsoft 365 audit logs support:

- External sharing link creation, use, and removal
- File access and download activity
- Sensitivity label application, removal, or downgrade
- DLP rule matches, overrides, and policy changes
- SharePoint, OneDrive, Teams, and Exchange administration changes
- Guest additions and permission changes
- Retention label or policy changes

Audit review should have a defined owner, review cadence, retention period, escalation path, and evidence-preservation process. The analyst can identify visibility gaps but does not provide a legal opinion on required retention or regulatory sufficiency.

## Analyst Findings

1. **High:** Sensitive employee and payroll content lacks consistent sensitivity labels.
2. **High:** SharePoint payroll access appears broader than the documented need-to-know population.
3. **High:** External OneDrive links require immediate owner and business-purpose validation.
4. **High:** DLP coverage is inconsistent across Microsoft 365 collaboration locations.
5. **Medium:** Retention and classification practices vary across equivalent data types.
6. **Medium:** Audit logs exist in the scenario, but recurring governance review is not documented.
7. **Not established:** The evidence does not prove data exfiltration, malicious insider activity, legal breach, or regulatory noncompliance.

## Recommended Response Actions

### Immediate Review

- Ask authorized data owners to validate the six broadly shared payroll files.
- Review the four external OneDrive links and expire access that lacks a current approved business purpose.
- Apply temporary review tracking to the nine unlabeled sensitive files.
- Confirm whether high-risk external sharing generated DLP or audit events.

### Near-Term Improvement

- Pilot sensitivity labels with HR and payroll data owners.
- Expand DLP simulation coverage to OneDrive and Teams.
- Establish a recurring external-sharing and guest-access review.
- Define owners for data classification, access recertification, audit review, and policy exceptions.

### Longer-Term Governance

- Build consistent classification, retention, DLP, and access governance standards across Microsoft 365.
- Add metrics for unlabeled sensitive content, external links, DLP overrides, stale access, and remediation aging.
- Test policy changes before enforcement and document rollback procedures.

All response actions require authorized owner review before changing access, labels, retention, DLP policy, or employee-related processes.

## Escalation Criteria

Escalate to the appropriate authorized team when:

- Validated sensitive employee, payroll, tax, or bank data is publicly accessible or shared with an unapproved external party.
- Audit logs show unexpected bulk download, mass sharing, repeated DLP override, or rapid label removal.
- A privileged or departed account retains access to sensitive locations.
- The data owner cannot confirm a legitimate business purpose for external sharing.
- Evidence suggests active exfiltration, deliberate control bypass, or material data exposure.
- Required audit evidence is unavailable or may age out.
- A finding may require privacy, legal, regulatory, HR, or breach-response assessment.

Escalation transfers the issue for authorized review. It is not a declaration of legal violation, employee misconduct, or reportable breach.

## Final Analyst Determination

**Determination:** Elevated data governance risk requiring prioritized owner review and control improvement.

The strongest simulated risks are broadly accessible payroll files, active external OneDrive links, missing labels on sensitive files, and incomplete DLP coverage. The available evidence supports remediation and deeper review, but it does not establish malicious activity, data exfiltration, legal breach, regulatory noncompliance, or employee misconduct.

Final policy, legal, compliance, privacy, HR, access-removal, and enforcement decisions remain with authorized organizational stakeholders.

## Evidence Boundary / Lab Disclaimer

This is a documentation-first lab and case-study portfolio project using realistic simulated evidence. It does not represent production SOC employment, Microsoft 365 tenant ownership, enterprise authority, legal or compliance authority, access to live customer or employee data, or a deployed Microsoft Purview configuration. No real sensitive values, API keys, tenant IDs, credentials, audit exports, or customer records are included.
