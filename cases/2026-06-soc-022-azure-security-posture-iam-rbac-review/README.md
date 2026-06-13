# SOC-022: Azure Security Posture Review / IAM & RBAC Governance

## Case Type

Documentation-first lab / case study using realistic simulated Microsoft Azure evidence.

## Recruiter Snapshot

This case demonstrates cloud security analyst thinking across Microsoft Azure IAM, Azure RBAC, access governance, privileged access, cloud misconfiguration, storage account exposure, network controls, diagnostic logs, audit logs, and Defender for Cloud-style security posture management.

The analyst reviews sanitized findings, assesses risk, and provides practical analyst recommendations. Authorized cloud owners retain responsibility for production validation, access changes, incident response decisions, and remediation approval.

## Case Files

- [Analyst handoff](HANDOFF.md)
- [ELI10 summary](outputs/eli10.md)
- [Technical summary](outputs/technical.md)
- [Executive summary](outputs/executive-summary.md)
- [LinkedIn draft](outputs/linkedin.md)
- [OneNote notes](outputs/onenote.md)

## Review Objective

Assess a simulated Azure environment for identity, Azure RBAC, privileged access, resource exposure, logging visibility, and governance weaknesses. Prioritize findings that could increase unauthorized access, cloud resource exposure, or delayed detection, then provide evidence-based remediation and escalation guidance.

## Environment Assumptions

- The organization uses Microsoft Azure with multiple subscriptions and resource groups.
- Microsoft Entra ID supplies workforce and service identities for the simulated tenant.
- Azure RBAC assignments, activity logs, diagnostic settings, network security groups, storage settings, and Defender for Cloud-style recommendations are available as sanitized review evidence.
- All tenant names, subscriptions, identities, resources, counts, and findings are fictional.
- The analyst has review-only access and does not change production resources or permissions.
- No real customer data, credentials, tenant identifiers, access tokens, or production exports are included.
- Production changes require authorized owner validation, testing, change control, and approval.

## Azure Security Scenario

A simulated organization initiated a risk review after internal concerns about excessive permissions, broad role assignments, stale identities, inconsistent governance visibility, and possible cloud resource exposure.

Review scope:

| Area | Simulated Scope | Review Focus |
| --- | --- | --- |
| Identity | Workforce users and service principals | Stale access, MFA, Conditional Access |
| Azure RBAC | Management group, subscription, and resource group assignments | Owner/Contributor scope and least privilege |
| Privileged access | Standing administrative roles | Approval, duration, monitoring |
| Storage | `stfinreportslab01` | Public access and network exposure |
| Network | `nsg-app-eastus-lab` | Broad inbound rules |
| Monitoring | Activity logs and diagnostic settings | Collection, retention, alerting |
| Governance | Resource groups, tags, and Defender for Cloud recommendations | Ownership and remediation tracking |

## Evidence Reviewed

- Simulated Azure RBAC assignment export
- Sanitized Microsoft Entra ID user and service principal inventory
- Privileged role eligibility and standing-access summary
- Storage account configuration summary
- Network security group rule review
- Azure Activity Log and diagnostic settings coverage summary
- Defender for Cloud-style recommendation list
- Resource group ownership and tagging inventory
- Conditional Access and MFA coverage summary

The review did not use live tenant access, raw customer data, credentials, tokens, or production logs.

## Simulated Finding Summary

| ID | Finding | Evidence Summary | Risk |
| --- | --- | --- | --- |
| `AZR-022-01` | Owner role assigned too broadly | 7 users and 2 groups hold subscription-level Owner; documented need exists for 3 assignments | High |
| `AZR-022-02` | Contributor scope exceeds job need | 11 Contributor assignments span entire subscriptions instead of managed resource groups | High |
| `AZR-022-03` | Stale identity access | 3 users inactive over 90 days and 2 service principals without recent owner validation retain access | High |
| `AZR-022-04` | Privileged access is standing | 5 privileged assignments are permanent rather than eligible or time-bound | High |
| `AZR-022-05` | Storage exposure risk | Public blob access is permitted and the storage firewall allows broad network access | High |
| `AZR-022-06` | Broad network rule | An inbound NSG rule permits TCP 3389 from `Internet` to a lab subnet | High |
| `AZR-022-07` | Weak diagnostic coverage | 4 of 9 reviewed resources lack required diagnostic settings | Medium |
| `AZR-022-08` | Privileged changes lack alerting | Activity logs exist, but no alert is documented for Owner or role-assignment changes | High |
| `AZR-022-09` | Access review cadence is unclear | No recurring certification record exists for privileged Azure RBAC assignments | Medium |
| `AZR-022-10` | Resource governance is inconsistent | 6 resource groups lack an owner tag; 4 lack a data-classification tag | Medium |
| `AZR-022-11` | Security recommendations remain open | 8 high or medium Defender for Cloud-style recommendations are overdue | Medium |

### Simulated Evidence Detail

```json
{
  "review_id": "SOC-022-AZURE-POSTURE-LAB",
  "case_type": "lab_case_study",
  "subscriptions_reviewed": 2,
  "findings": {
    "subscription_owner_assignments": 9,
    "owner_assignments_with_documented_need": 3,
    "broad_contributor_assignments": 11,
    "stale_users_with_access": 3,
    "unvalidated_service_principals": 2,
    "standing_privileged_assignments": 5,
    "resources_missing_diagnostics": 4,
    "untagged_resource_groups": 6,
    "overdue_defender_recommendations": 8
  },
  "production_changes_performed": false,
  "determination": "elevated_posture_risk_owner_review_required"
}
```

## Identity and Access Findings

- Three inactive workforce accounts retain Azure access despite more than 90 days without recorded sign-in activity.
- Two service principals have active role assignments but no current business owner or recent credential review.
- Identity lifecycle evidence does not show a consistent joiner, mover, and leaver control for Azure access.
- MFA coverage is incomplete for two non-privileged users with Contributor access.
- Conditional Access policies cover standard interactive users but do not clearly address workload identities, emergency accounts, or location-based risk.

These indicators justify validation and access governance review. They do not prove account compromise or misuse.

## RBAC Findings

- Subscription-level Owner is broader than the documented operating need.
- Contributor is assigned at subscription scope when resource-group scope appears sufficient.
- Direct user assignments reduce visibility compared with role-based group assignments.
- Custom role use is limited, leaving teams dependent on broad built-in roles.
- No evidence shows a recurring least-privilege review or assignment-expiration process.

Recommended Azure RBAC design principles are narrow scope, group-based assignment, separation of duties, documented business ownership, and time-bound privileged access.

## Privileged Access Concerns

- Five privileged assignments are standing rather than eligible or time-limited.
- Approval, justification, and duration are not consistently recorded.
- No documented alert detects creation of new Owner assignments.
- Emergency access accounts require separate monitoring and controlled exception handling.
- Privileged Identity Management-style controls should be evaluated for activation approval, MFA, limited duration, notification, and access review.

The analyst recommends controls but does not activate, remove, or reassign privileged roles.

## Storage / Resource Exposure Concerns

- Public blob access is allowed on `stfinreportslab01`.
- The storage account network configuration permits access from broad networks rather than approved private paths.
- No evidence confirms that stored data is publicly reachable or sensitive; content and effective access require authorized validation.
- A resource lock and documented owner are absent.
- Resource tags do not identify data classification or support contact.

Storage account exposure should be validated promptly because permissive configuration can become material when combined with sensitive content or anonymous access.

## Network / Security Group Concerns

- `nsg-app-eastus-lab` permits inbound Remote Desktop Protocol on TCP 3389 from `Internet`.
- The rule applies to a subnet rather than a single approved management endpoint.
- No expiration, ticket reference, or exception owner is recorded.
- Flow-log or equivalent network telemetry coverage is not documented.

Recommended controls include removing unnecessary exposure, using approved administrative access paths, restricting source ranges, documenting exceptions, and monitoring changes. Any production network change requires owner approval and availability review.

## Logging and Monitoring Visibility

- Four of nine reviewed resources lack the expected diagnostic logs.
- Azure Activity Logs are retained, but routing to a central monitoring destination is inconsistent.
- No alert is documented for role-assignment creation, deletion, or privileged scope change.
- Storage access, Key Vault audit, and NSG-related telemetry coverage require validation.
- Log retention, ownership, and incident response handoff are not consistently documented.

Priority audit logs should support identity changes, Azure RBAC changes, privileged activation, storage configuration, network rule changes, policy changes, and Defender for Cloud recommendation status.

## Defender for Cloud-Style Recommendations

The simulated review identified open security posture management recommendations:

1. Restrict public network access to storage accounts.
2. Enable required diagnostic settings.
3. Remediate internet-exposed management ports.
4. Apply MFA to accounts with elevated resource access.
5. Review excessive Owner and Contributor assignments.
6. Assign resource owners and required governance tags.
7. Enable alerting for privileged role changes.
8. Track overdue recommendations with accountable owners and due dates.

Recommendation status is a risk signal, not proof of exploitation. Business context, compensating controls, feasibility, and authorized risk acceptance must be reviewed.

## Conditional Access / MFA Considerations

- Require MFA for privileged interactive access.
- Evaluate stronger authentication for high-risk operations.
- Define controlled exclusions for emergency access accounts and monitor their use.
- Test policy impact before enforcement to avoid administrative lockout.
- Review legacy authentication and unmanaged-device access where applicable.
- Treat service principals and managed identities through workload-identity governance rather than interactive MFA assumptions.
- Document policy owners, exceptions, review dates, and rollback procedures.

## Risk Analysis

### High-Risk Themes

- Broad Owner and Contributor assignments increase the impact of credential compromise or administrative error.
- Stale identities and unowned service principals can preserve access after business need ends.
- Standing privileged access reduces friction for unauthorized or accidental high-impact changes.
- Permissive storage and NSG configurations can expose resources beyond intended boundaries.
- Missing alerts for privileged changes can delay detection and incident response.

### Medium-Risk Themes

- Missing diagnostic settings create uneven investigation visibility.
- Inconsistent tagging obscures ownership and remediation accountability.
- An undefined access review cadence allows privilege accumulation.
- Overdue Defender for Cloud recommendations indicate unmanaged security posture debt.

### Risk Limitations

The evidence identifies cloud misconfiguration and governance risk. It does not establish exploitation, data exposure, account compromise, malicious activity, or a reportable incident.

## Analyst Findings

1. **High:** Subscription-level Owner and Contributor assignments exceed documented need.
2. **High:** Stale users and unvalidated service principals retain Azure access.
3. **High:** Standing privileged access and missing change alerts weaken privileged access governance.
4. **High:** Storage and NSG settings create plausible external exposure paths requiring validation.
5. **Medium:** Diagnostic logs and central monitoring coverage are incomplete.
6. **Medium:** Access review cadence, tagging, and recommendation ownership are inconsistent.
7. **Not established:** No evidence proves exploitation, unauthorized data access, or active compromise.

## Recommended Response Actions

### Immediate Risk Review

- Validate every subscription-level Owner assignment with the authorized subscription owner.
- Review stale users and service principals; disable or remove access only after owner approval and dependency checks.
- Validate effective anonymous access and network reachability for the storage account.
- Review the internet-exposed RDP rule and document the approved administrative requirement.
- Create monitoring for new Owner, User Access Administrator, and role-assignment changes.

### Near-Term Remediation

- Reduce Azure RBAC scope to the lowest practical resource group or resource.
- Replace direct assignments with governed groups where appropriate.
- Move standing privileged access toward eligible, approved, time-bound activation.
- Apply required diagnostic settings and centralize relevant audit logs.
- Establish quarterly access reviews for privileged roles and service principals.
- Assign owners and due dates to Defender for Cloud recommendations.

### Longer-Term Governance

- Define an Azure access governance standard covering least privilege, privileged access, service principals, exceptions, and recertification.
- Standardize resource tags for owner, environment, data classification, and support contact.
- Use policy-based guardrails for diagnostic settings, public access, required tags, and prohibited network exposure.
- Track posture metrics such as broad role assignments, stale access, missing logs, exposed resources, and remediation age.

## Escalation Criteria

Escalate to authorized cloud security, identity, incident response, or resource owners when:

- Public access to sensitive or business-critical storage is confirmed.
- An unknown or stale identity has privileged access.
- A new Owner or User Access Administrator assignment lacks an approved change record.
- Audit logs show unexpected privileged changes, policy bypass, or rapid resource modification.
- An internet-exposed management service is active without an approved exception.
- Required logs are unavailable during investigation.
- Evidence indicates active exploitation, credential compromise, or unauthorized access.
- A high-risk recommendation remains overdue without an owner or accepted-risk record.

Escalation initiates authorized review; it is not a declaration of breach, misconduct, or legal noncompliance.

## Final Analyst Determination

**Determination:** Elevated Microsoft Azure security posture risk requiring prioritized IAM, Azure RBAC, exposure, and monitoring remediation.

The strongest simulated concerns are excessive subscription-level permissions, stale identity access, standing privileged roles, permissive storage and network settings, and insufficient alerting for privileged changes. The evidence supports immediate owner validation and a structured remediation plan, but it does not prove exploitation, data loss, account compromise, or production impact.

## Evidence Boundary / Lab Disclaimer

This is a documentation-first lab and case-study portfolio project using realistic simulated evidence. It does not represent production SOC employment, ownership of a live Azure tenant, enterprise authority, real customer data access, legal or compliance authority, or completed production remediation. No real credentials, tenant IDs, subscription IDs, tokens, customer records, or live cloud exports are included.
