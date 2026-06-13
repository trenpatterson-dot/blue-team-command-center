# SOC-023 Technical Summary

## Case

Azure Conditional Access / MFA Risk Review

## Objective

Review simulated Microsoft Entra ID evidence for Conditional Access scope, MFA enforcement, privileged-role protection, exclusions, risky sign-ins, legacy authentication, emergency access, and investigation visibility.

## Scope

- Seven simulated Conditional Access policy summaries
- MFA registration and enforcement evidence
- Privileged-role assignments
- Excluded users and groups
- Risky-user and risky-sign-in controls
- Legacy authentication activity
- Two emergency access accounts
- Sign-in and audit visibility

## Key Findings

| Finding | Risk |
| --- | --- |
| One active admin role not covered by any reviewed policy requiring strong authentication | High |
| Three accounts in a broad exclusion group lack current justification | High |
| High-risk sign-in control remains report-only | High |
| Legacy authentication activity appears outside the intended block policy | High |
| MFA registration exceeds verified enforcement coverage | Medium |
| One break-glass account lacks documented sign-in alerting | High |
| Exception reviews and policy ownership are inconsistent | Medium |

## Analysis

- MFA registration confirms method availability, not that each relevant sign-in is challenged.
- Broad exclusions can become policy-bypass paths when membership is unowned or permanent.
- Privileged-role coverage should be validated against current role assignments, not static group assumptions.
- Risk detections require investigation context and an approved response policy.
- Legacy protocols may not support modern authentication controls consistently.
- Emergency access exclusions can be necessary, but every use should be exceptional and monitored.

## Conditional Access Review Method

1. Inventory policy state, assignments, conditions, grant controls, and session controls.
2. Compare privileged-role membership with policy scope.
3. Review every exclusion for owner, justification, expiration, and monitoring.
4. Compare MFA registration with actual policy evaluation and authentication results.
5. Review risky-sign-in and risky-user response coverage.
6. Identify legacy client activity and application dependencies.
7. Review emergency access controls, alerts, and testing.
8. Evaluate sign-in and audit logs for policy-result visibility.
9. Recommend report-only testing, pilot deployment, rollback planning, and owner approval.

## MITRE ATT&CK

- `T1078 - Valid Accounts`
- `T1110.003 - Password Spraying`
- `T1110.004 - Credential Stuffing`
- `T1621 - Multi-Factor Authentication Request Generation`
- `T1556.009 - Modify Authentication Process: Conditional Access Policies`

These mappings describe plausible attack paths related to the reviewed controls. The simulated evidence does not prove that all techniques occurred.

## Recommendations

1. Confirm strong authentication coverage for every active privileged role.
2. Reduce exclusion scope after owner and dependency validation.
3. Test risk-based controls in report-only mode before approved enforcement.
4. Block legacy authentication after migration and impact testing.
5. Alert on every emergency access sign-in and review every use.
6. Standardize policy purpose, owner, exception, review, and rollback records.
7. Retain sign-in and audit evidence needed to explain policy outcomes.

## Determination

Elevated identity-control risk exists because policy scope and governance are inconsistent despite broad MFA adoption. Controlled remediation is warranted, but the evidence does not establish account compromise or successful policy bypass.

## Evidence Boundary

Simulated lab evidence only. No live tenant access, employer environment, customer data, production authority, legal or compliance authority, or completed remediation.
