# HANDOFF: SOC-024 Azure Sign-In Risk / Identity Protection Investigation

## Project

SOC-024: Azure Sign-In Risk / Identity Protection Investigation

## Status

Documentation complete for human review. No production account actions, policy changes, tenant access, commits, staging, or pushes were performed.

## Goal

Present a recruiter-ready, lab-based SOC investigation covering Microsoft Entra ID, Azure sign-in logs, Identity Protection, risky sign-in triage, MFA prompts, impossible travel-style activity, suspicious location patterns, conditional access response, and identity incident response recommendations.

## Scenario

A simulated SOC analyst reviews risky sign-in activity for `maria.ellis@contoso-lab.example`, a fictional finance user. The user has a normal Florida sign-in, followed minutes later by failed sign-ins from one international location and a password-accepted MFA challenge from another unfamiliar international location. No suspicious completed session is confirmed.

Conditional access blocks the suspicious sign-in, but the password step and MFA prompt behavior create enough risk to recommend containment.

## Deliverables

- [Case README](README.md)
- [ELI10 summary](outputs/eli10.md)
- [Technical summary](outputs/technical.md)
- [Executive summary](outputs/executive-summary.md)
- [LinkedIn draft](outputs/linkedin.md)
- [OneNote notes](outputs/onenote.md)

## Key Evidence Reviewed

1. Simulated Microsoft Entra ID sign-in logs.
2. Identity Protection-style risky sign-in record.
3. Failed password attempts from an unfamiliar location.
4. Successful password step from a second unfamiliar location.
5. MFA push prompts, including user denial.
6. Conditional access block after risk evaluation.
7. Unknown device/browser indicators.
8. Similar failed attempts against two other finance users.

## Analyst Decision

Escalate as suspected credential exposure with blocked access.

The evidence does not prove completed account compromise, but it supports containment because a password step appears to have succeeded from an unfamiliar location and MFA prompts were generated. Conditional access reduced impact by blocking access.

## Recommended Handoff Path

- Identity administrator resets password and revokes sessions after user validation.
- Identity administrator requires MFA re-registration and reviews registered methods.
- SOC analyst reviews recent mailbox, SharePoint, Teams, and finance application activity.
- SOC analyst searches for similar sign-in patterns across finance users.
- Identity/security team monitors the user for 24 to 72 hours.
- Policy owner reviews detection logic and conditional access response tuning.

## Escalation Questions

1. Did the user confirm travel or deny the sign-in attempt?
2. Did any suspicious session fully establish after MFA?
3. Were new MFA methods, inbox rules, OAuth grants, groups, or roles added?
4. Are similar attempts targeting other users in the same department?
5. Should high-risk sign-ins be blocked, challenged, or routed for manual review?
6. Are finance applications protected by compliant-device or strong-authentication requirements?

## MITRE ATT&CK Mapping

- `T1110.003 - Password Spraying`
- `T1078 - Valid Accounts`
- `T1621 - Multi-Factor Authentication Request Generation`

`T1098 - Account Manipulation` is not included because the simulated evidence does not show account setting, role, group, mailbox rule, OAuth grant, or MFA method changes.

## Decision Boundary

The analyst reviews evidence, documents risk, recommends containment, and defines escalation criteria. The analyst does not independently reset passwords, revoke sessions, change conditional access policies, contact users outside procedure, declare legal findings, or approve production remediation.

## Evidence Boundary

This handoff uses fictional, simulated, sanitized evidence for a portfolio case. It does not claim production SOC employment, live Microsoft tenant access, employer investigation work, customer data access, legal or compliance authority, incident ownership, or completed remediation.
