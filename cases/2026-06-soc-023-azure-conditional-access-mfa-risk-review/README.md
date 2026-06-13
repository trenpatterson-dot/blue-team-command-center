# SOC-023: Azure Conditional Access / MFA Risk Review

## Case Type

Documentation-first lab case study using realistic, simulated Microsoft Entra ID and Azure identity-security evidence.

## Recruiter Snapshot

This case demonstrates identity-security analyst thinking across Conditional Access, MFA coverage, policy exclusions, privileged-role protection, risky sign-ins, legacy authentication, emergency access accounts, policy testing, and human-controlled remediation.

The analyst reviews simulated control evidence, documents gaps, maps relevant identity attack techniques, and recommends safer policy improvements. Authorized identity and cloud owners retain responsibility for production validation, policy changes, user impact review, rollback planning, and remediation approval.

## Case Files

- [Analyst handoff](HANDOFF.md)
- [ELI10 summary](outputs/eli10.md)
- [Technical summary](outputs/technical.md)
- [Executive summary](outputs/executive-summary.md)
- [LinkedIn draft](outputs/linkedin.md)
- [OneNote notes](outputs/onenote.md)

## Scenario

A simulated organization reports that MFA is broadly enabled, but an identity-control review identifies possible Conditional Access gaps involving excluded accounts, privileged roles, risky sign-ins, legacy authentication, and emergency access monitoring.

The analyst is asked to determine whether the available controls provide consistent sign-in protection and to recommend improvements without changing policies or claiming that account compromise occurred.

## Analyst Objective

Assess simulated Conditional Access and MFA evidence for control gaps that could allow valid credentials, password attacks, legacy protocols, weak exclusions, or poorly monitored emergency accounts to bypass expected identity protections.

## Scope

| Area | Simulated Review Scope | Analyst Focus |
| --- | --- | --- |
| Conditional Access | Seven policy summaries | Coverage, state, assignments, conditions, grant controls |
| MFA | Workforce and privileged-role coverage | Enforcement path, registration, exceptions |
| Exclusions | Users and groups excluded from policies | Business justification, ownership, expiration |
| Risk signals | Risky-user and risky-sign-in policy handling | Detection response and escalation |
| Legacy authentication | Older authentication protocols | Blocking coverage and residual exposure |
| Emergency access | Two break-glass accounts | Exclusion design, monitoring, testing |
| Logging | Sign-in and policy-result visibility | Investigation and alerting readiness |

## Simulated Evidence Reviewed

- Conditional Access policy inventory and assignment summary
- MFA registration and enforcement coverage summary
- Privileged-role membership summary
- Excluded user and group list
- Risky sign-in and user-risk handling summary
- Legacy authentication sign-in summary
- Emergency access account control record
- Sanitized sign-in log examples with Conditional Access results

No live tenant access, credentials, tokens, customer records, employer data, or production exports were used.

## Conditional Access Review Checklist

- [x] Identify enabled, report-only, and disabled policies.
- [x] Review included users, groups, roles, applications, and locations.
- [x] Review excluded users, groups, service accounts, and emergency accounts.
- [x] Confirm privileged roles receive strong authentication coverage.
- [x] Review MFA grant controls and authentication-strength expectations.
- [x] Review risky-sign-in and risky-user policy handling.
- [x] Review legacy authentication blocking.
- [x] Check device, platform, client-app, and location conditions.
- [x] Review emergency access design and alerting.
- [x] Confirm sign-in logs show policy evaluation results.
- [x] Require report-only analysis, impact review, rollback planning, and owner approval before enforcement changes.

## Simulated Findings

| ID | Finding | Simulated Evidence | Risk |
| --- | --- | --- | --- |
| `CA-023-01` | Privileged-role coverage is incomplete | One active admin role is not covered by any reviewed policy requiring strong authentication | High |
| `CA-023-02` | Excluded group membership is too broad | One exclusion group contains eight accounts; three lack current justification | High |
| `CA-023-03` | Risk-based policy is report-only | High-risk sign-ins are evaluated but not blocked or challenged | High |
| `CA-023-04` | Legacy authentication blocking is incomplete | One older mail protocol appears in simulated sign-in evidence outside the block policy | High |
| `CA-023-05` | MFA registration does not equal enforcement | Most users are registered, but policy evaluation shows inconsistent challenge requirements | Medium |
| `CA-023-06` | Emergency access monitoring is incomplete | Two break-glass accounts are excluded as designed, but only one has documented sign-in alerting | High |
| `CA-023-07` | Exclusion governance is weak | No recurring review date or expiration is recorded for several exceptions | Medium |
| `CA-023-08` | Policy naming and ownership are inconsistent | Two policies lack a clear owner and purpose statement | Low |

These findings identify simulated control risk. They do not prove exploitation, successful bypass, unauthorized access, or account compromise.

## MFA Coverage Review

The simulated review distinguishes three separate questions:

1. Is the identity registered for an MFA method?
2. Does a policy require MFA for the relevant sign-in?
3. Did the sign-in record show that the requirement was satisfied?

Broad registration is not treated as proof of consistent enforcement. Privileged identities, sensitive applications, high-risk sign-ins, unmanaged devices, and external locations require specific policy evaluation.

## Excluded Users and Groups

Exclusions may be necessary for emergency access, service dependencies, staged deployment, or technical compatibility. They also create bypass paths if they are broad, unowned, permanent, or poorly monitored.

Recommended exception records should include:

- Business and technical justification
- Named owner
- Included identities
- Date approved
- Expiration or next review date
- Compensating controls
- Monitoring requirement
- Removal and rollback criteria

## Risky Sign-In Consideration

Risk detections are signals requiring validation, not proof of compromise. The analyst would correlate:

- User and sign-in risk level
- Source network and location
- Device and client application
- Authentication method and MFA result
- Conditional Access policy outcome
- Similar activity across other identities
- Subsequent mailbox, application, or administrative activity

High-risk activity should enter an authorized investigation and escalation process. Automated blocking or account action requires approved policy design and recovery planning.

## Legacy Authentication Risk

Legacy authentication may not support modern MFA and Conditional Access controls consistently. Residual use can provide an avoidable path for password spraying, credential stuffing, or use of stolen credentials.

The analyst recommends inventorying dependencies, validating business need, testing modern-authentication migration, monitoring residual attempts, and blocking legacy authentication through controlled change management.

## Break-Glass Account Consideration

Emergency access accounts may need carefully designed Conditional Access exclusions to prevent tenant lockout. Exclusion does not mean the accounts should be ignored.

Controls should include:

- Strong, separately protected credentials
- No routine administrative use
- Limited account count
- Documented ownership and recovery procedure
- Immediate sign-in alerting
- Periodic access testing
- Review after every use
- Separation from normal user devices and workflows

The analyst does not recommend applying ordinary enforcement blindly to break-glass accounts because an untested change could remove emergency access.

## Policy Gap Analysis

The main control problem is inconsistency rather than complete absence of MFA. Broad registration exists, but policy scope, exclusions, risk handling, legacy authentication coverage, and emergency-account monitoring create potential protection gaps.

The highest-priority review areas are:

1. Confirm all privileged roles receive appropriate MFA or authentication-strength controls.
2. Reduce and govern exclusion-group membership.
3. Evaluate risk-based controls in report-only mode before approved enforcement.
4. Eliminate unsupported legacy authentication after dependency testing.
5. Alert on every emergency access sign-in.

## MITRE ATT&CK Mapping

| Technique | Relevance |
| --- | --- |
| `T1078 - Valid Accounts` | Stolen or misused valid credentials could gain access where policy enforcement is weak or excluded. |
| `T1110.003 - Password Spraying` | Legacy protocols and broad identity targeting can increase password-spraying exposure. |
| `T1110.004 - Credential Stuffing` | Reused credentials may be tested against cloud identities; consistent MFA reduces impact. |
| `T1621 - Multi-Factor Authentication Request Generation` | Repeated MFA prompts may be used to pressure a user into approving access. |
| `T1556.009 - Modify Authentication Process: Conditional Access Policies` | An attacker with sufficient access could weaken policy scope, add exclusions, or remove MFA requirements. |

These mappings describe plausible identity attack paths and control relevance. The simulated evidence does not establish that every technique occurred.

## Analyst Recommendations

### Immediate Owner Review

- Validate privileged-role coverage across every active administrator.
- Review each excluded identity and remove only after owner and dependency validation.
- Confirm alerting for both emergency access accounts.
- Investigate any simulated legacy-authentication activity and identify the application dependency.

### Controlled Policy Improvement

- Use report-only mode and sign-in impact analysis before enforcement.
- Require strong authentication for privileged access and sensitive applications.
- Define risk-based responses for high-risk users and sign-ins.
- Replace broad exclusion groups with narrowly governed exceptions.
- Block legacy authentication after testing and approved migration.
- Standardize policy names, owners, purpose, review dates, and change records.

### Monitoring and Governance

- Alert on emergency access use, policy changes, excluded-group changes, and privileged sign-ins.
- Review exception membership on a recurring schedule.
- Retain sign-in and audit evidence needed for investigation.
- Test policy changes with pilot groups and documented rollback steps.

## Analyst Decision Boundary

The analyst may review evidence, identify gaps, document risk, recommend changes, and define escalation criteria. The analyst does not independently enable policies, remove exclusions, disable accounts, reset credentials, declare compromise, accept risk, or authorize production changes.

## Interview Story Version

I reviewed a simulated Azure identity environment where MFA registration was high, but Conditional Access enforcement was not equally strong across all identities. I separated registration from actual policy enforcement, reviewed privileged-role coverage, exclusions, risk-based controls, legacy authentication, and break-glass monitoring, then prioritized the gaps by potential impact. My recommendation was to validate exclusions, test policy changes in report-only mode, protect privileged access, block legacy authentication through controlled migration, and alert on emergency-account use. I documented the work as a lab case and kept all production decisions with authorized owners.

## Final Analyst Determination

**Determination:** Elevated identity-control risk requiring prioritized Conditional Access, MFA enforcement, exclusion governance, legacy-authentication, and emergency-access review.

The simulated environment has broad MFA adoption, but inconsistent policy scope could leave avoidable sign-in protection gaps. The evidence supports controlled policy improvement and owner validation; it does not prove active compromise or successful authentication bypass.

## Evidence Boundary

This is a lab-based portfolio case using realistic simulated evidence. It does not represent production SOC employment, employer tenant access, live customer remediation, enterprise authority, legal or compliance authority, or completed production changes.
