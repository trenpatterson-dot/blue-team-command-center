# HANDOFF: SOC-023 Azure Conditional Access / MFA Risk Review

## Project

SOC-023: Azure Conditional Access / MFA Risk Review

## Status

Documentation complete for human review. No production policy changes were performed.

## Goal

Present a recruiter-ready, lab-based Azure identity-security review covering Conditional Access, MFA enforcement, exclusions, privileged roles, risky sign-ins, legacy authentication, emergency access accounts, and policy governance.

## Scenario

A simulated tenant has broad MFA registration, but policy evidence shows possible gaps in privileged-role coverage, excluded identities, risk-based enforcement, legacy authentication blocking, and break-glass monitoring.

## Deliverables

- [Case README](README.md)
- [ELI10 summary](outputs/eli10.md)
- [Technical summary](outputs/technical.md)
- [Executive summary](outputs/executive-summary.md)
- [LinkedIn draft](outputs/linkedin.md)
- [OneNote notes](outputs/onenote.md)

## Priority Findings

1. One active admin role is not covered by any reviewed policy requiring strong authentication.
2. An exclusion group contains accounts without current justification.
3. High-risk sign-in handling remains report-only.
4. Legacy authentication blocking has a simulated coverage gap.
5. MFA registration is broader than verified policy enforcement.
6. One emergency access account lacks documented sign-in alerting.

## Recommended Handoff Path

- Identity owners validate policy scope, exclusion need, and authentication requirements.
- Application owners identify and migrate legacy-authentication dependencies.
- Security operations validates sign-in, emergency-account, and policy-change alerting.
- Change owners test proposed policies in report-only mode and pilot groups.
- Authorized administrators approve, schedule, implement, and monitor changes.

## Escalation Questions

1. Are all privileged roles covered by strong authentication requirements?
2. Does every excluded identity have a current owner and justification?
3. Are high-risk sign-ins challenged, blocked, or routed for investigation?
4. Which application still requires legacy authentication?
5. Are both emergency access accounts monitored and periodically tested?
6. Do sign-in logs provide enough evidence to explain policy outcomes?

## Decision Boundary

The analyst identifies and communicates risk. The analyst does not independently modify Conditional Access, remove exclusions, block protocols, disable identities, reset credentials, declare compromise, or approve risk.

## Evidence Boundary

This handoff uses simulated, sanitized evidence for a portfolio case. It does not claim production SOC employment, employer tenant access, customer data access, enterprise authority, legal or compliance authority, or completed remediation.
