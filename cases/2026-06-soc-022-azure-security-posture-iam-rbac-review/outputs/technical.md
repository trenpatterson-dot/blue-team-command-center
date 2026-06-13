# SOC-022 Technical Summary

## Case

Azure Security Posture Review / IAM & RBAC Governance

## Objective

Review simulated Microsoft Azure evidence for IAM, Azure RBAC, access governance, privileged access, cloud misconfiguration, resource exposure, diagnostic logs, audit logs, and security posture management gaps.

## Scope

- Microsoft Entra ID users and service principals
- Azure RBAC assignments
- Privileged access governance
- Storage account configuration
- Network security group rules
- Azure Activity Log and diagnostic settings
- Defender for Cloud-style recommendations
- Conditional Access and MFA
- Resource ownership and tagging

## Key Simulated Findings

| Finding | Scope | Risk |
| --- | --- | --- |
| Broad Owner assignments | 7 users and 2 groups at subscription scope | High |
| Broad Contributor assignments | 11 subscription-level assignments | High |
| Stale access | 3 users and 2 service principals | High |
| Standing privileged access | 5 permanent assignments | High |
| Storage exposure risk | Public blob access and broad network allowance | High |
| Internet-exposed RDP | TCP 3389 from `Internet` to lab subnet | High |
| Missing diagnostics | 4 of 9 reviewed resources | Medium |
| Missing privileged-change alerting | Azure RBAC changes | High |
| Missing review cadence | Privileged assignments | Medium |
| Inconsistent governance tags | 6 resource groups without owner tag | Medium |
| Overdue posture recommendations | 8 Defender for Cloud-style items | Medium |

## Risk Analysis

- Excessive Azure RBAC scope increases the impact of compromised credentials and administrative error.
- Stale users and service principals preserve access beyond validated need.
- Standing privileged access increases exposure time.
- Storage account exposure and broad NSG rules create plausible external attack paths.
- Missing diagnostic logs and alerts can delay incident response.
- Weak ownership and access review processes allow cloud misconfiguration risk to persist.

The findings do not prove exploitation, unauthorized data access, or active compromise.

## Technical Recommendations

1. Validate all Owner, User Access Administrator, and broad Contributor assignments.
2. Reduce role scope and use governed groups or custom roles where justified.
3. Remove stale access only after dependency and owner validation.
4. Evaluate time-bound privileged activation with approval and MFA.
5. Disable unnecessary public storage access and restrict network paths.
6. Remove or tightly restrict internet-exposed administrative ports.
7. Apply diagnostic settings and centralize relevant audit logs.
8. Alert on privileged role and policy changes.
9. Establish recurring access governance reviews.
10. Assign accountable owners and due dates to Defender for Cloud recommendations.

## Conditional Access / MFA

- Require MFA for privileged interactive access.
- Test Conditional Access before enforcement.
- Monitor controlled emergency-account exclusions.
- Govern workload identities separately from interactive users.
- Record policy exceptions, owners, and expiration dates.

## Escalation

Escalate confirmed public sensitive-data access, unknown privileged identities, unexplained role changes, active internet exposure, missing investigation logs, or compromise indicators to authorized cloud security and incident response owners.

## Final Determination

Elevated Azure posture risk requires prioritized IAM, Azure RBAC, resource exposure, and monitoring remediation. The available simulated evidence supports risk reduction but does not establish a security incident.

## Evidence Boundary

This is a simulated lab/case study. It does not claim production tenant access, enterprise authority, production SOC employment, real customer data, or completed remediation.
