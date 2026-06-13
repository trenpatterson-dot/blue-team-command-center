# SOC-023 OneNote Notes

## Topic

Azure Conditional Access and MFA risk review focused on sign-in protection, policy scope, exceptions, risky sign-ins, legacy authentication, and emergency access.

## Scenario

Simulated identity-control concerns:

- Broad MFA registration but inconsistent enforcement evidence
- One privileged role not covered by any reviewed policy requiring strong authentication
- Overbroad exclusion-group membership
- Risk-based policy in report-only mode
- Residual legacy-authentication activity
- Incomplete break-glass account alerting
- Weak exception review and policy ownership records

## Analyst Method

1. Inventory policy state, scope, conditions, and grant controls.
2. Compare active privileged roles with strong-authentication coverage.
3. Review excluded identities and exception governance.
4. Separate MFA registration from policy enforcement and sign-in results.
5. Review risky-user and risky-sign-in response controls.
6. Identify legacy-authentication activity and dependencies.
7. Review emergency access design, monitoring, and testing.
8. Map plausible identity attack paths.
9. Recommend report-only testing, pilot deployment, rollback planning, and owner approval.

## Main Findings

- One active admin role may not receive dedicated privileged MFA enforcement.
- Three excluded accounts lack current justification.
- High-risk sign-in handling is not enforced.
- One older protocol appears outside intended blocking coverage.
- One emergency account lacks documented sign-in alerting.
- Policy exceptions and ownership are not reviewed consistently.

## MITRE ATT&CK

- `T1078 - Valid Accounts`
- `T1110.003 - Password Spraying`
- `T1110.004 - Credential Stuffing`
- `T1621 - Multi-Factor Authentication Request Generation`
- `T1556.009 - Modify Authentication Process: Conditional Access Policies`

Mappings describe relevant attack paths; they do not prove occurrence.

## Recommendations

- Protect every privileged role with strong authentication controls.
- Narrow exclusions and record owner, purpose, expiration, and monitoring.
- Test risk policies in report-only mode before enforcement.
- Migrate and block legacy authentication through change control.
- Alert on every emergency access sign-in.
- Preserve sign-in and audit evidence for investigations.

## Interview Story

I reviewed a simulated Azure identity environment where MFA registration was broad but Conditional Access coverage was inconsistent. I compared registration with enforcement, reviewed privileged roles, exclusions, risky sign-ins, legacy authentication, and break-glass monitoring, then recommended report-only testing and owner-approved improvements. I kept the work evidence-bound and did not claim production authority.

## Recruiter-Facing Summary

This case demonstrates practical Conditional Access and MFA review, identity-risk analysis, policy-gap documentation, MITRE ATT&CK mapping, executive communication, and human-controlled remediation planning.

## Boundary

Lab-based portfolio evidence only. No production tenant access, employer data, customer remediation, enterprise authority, legal or compliance authority, or authority to change live policies.
