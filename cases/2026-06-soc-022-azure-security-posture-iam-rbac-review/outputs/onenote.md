# SOC-022 OneNote Notes

## Topic

Microsoft Azure security posture review focused on IAM, Azure RBAC, privileged access, cloud misconfiguration, and monitoring visibility.

## Scenario

Simulated internal concerns:

- Excessive Owner and Contributor permissions
- Stale user and service principal access
- Weak least-privilege review
- Permanent privileged roles
- Storage account exposure risk
- Broad NSG access
- Missing diagnostic logs
- Missing privileged-change alerting
- No clear access review cadence
- Inconsistent resource tags
- Open Defender for Cloud-style recommendations

## Analyst Method

1. Define environment assumptions and evidence limits.
2. Review identities and Azure RBAC assignments.
3. Identify broad scope, stale access, and privileged access concerns.
4. Review storage, network, and governance configuration.
5. Check diagnostic logs and audit logs.
6. Prioritize findings by likelihood, impact, and visibility.
7. Recommend owner validation and controlled remediation.
8. Define incident response escalation criteria.

## Main Findings

- Nine subscription-level Owner assignments; only three have documented need.
- Eleven broad Contributor assignments.
- Three stale users and two unvalidated service principals retain access.
- Five privileged assignments are standing.
- Storage permits public blob access and broad network connectivity.
- An NSG permits RDP from the Internet.
- Four reviewed resources lack expected diagnostics.
- No documented alert exists for privileged Azure RBAC changes.
- Access governance and tagging are inconsistent.

## Recommendations

- Enforce least privilege at the narrowest practical scope.
- Prefer governed groups and time-bound privileged access.
- Review stale identities and workload dependencies.
- Restrict storage and management-port exposure.
- Apply diagnostic settings and central monitoring.
- Alert on role assignment and policy changes.
- Review Conditional Access and MFA coverage.
- Assign owners and deadlines to posture recommendations.

## Final Determination

Elevated Azure security posture risk requires prioritized IAM, Azure RBAC, exposure, and logging remediation. Simulated evidence does not prove exploitation or active compromise.

## Boundary

Lab/case-study evidence only. No production tenant, customer data, credentials, authority, or remediation activity.
