# HANDOFF: SOC-022 Azure Security Posture / IAM & RBAC Review

## Project

SOC-022: Azure Security Posture Review / IAM & RBAC Governance

## Status

Documentation complete. Authorized cloud and identity owners must validate the simulated recommendations before production use.

## Goal

Present a recruiter-ready Microsoft Azure security posture review covering IAM, Azure RBAC, access governance, privileged access, storage and network exposure, diagnostic logs, Defender for Cloud-style recommendations, Conditional Access, and MFA.

## Scenario

A simulated organization is reviewing Azure security after concerns about excessive permissions, stale access, weak governance visibility, and cloud resource exposure.

## Deliverables

- [Case README](README.md)
- [ELI10 summary](outputs/eli10.md)
- [Technical summary](outputs/technical.md)
- [Executive summary](outputs/executive-summary.md)
- [LinkedIn draft](outputs/linkedin.md)
- [OneNote notes](outputs/onenote.md)

## Priority Findings

1. Subscription Owner and Contributor roles are assigned more broadly than documented need.
2. Stale users and unvalidated service principals retain access.
3. Standing privileged assignments lack consistent approval, duration, and alerting.
4. Storage and NSG settings create plausible exposure risk.
5. Diagnostic settings and central audit visibility are incomplete.
6. Access reviews, ownership tags, and Defender for Cloud remediation tracking are inconsistent.

## Authorized Review Questions

1. Which privileged assignments have a current documented business need?
2. Can broad roles be reduced to narrower scope or custom permissions?
3. Do stale users or service principals support active dependencies?
4. Is anonymous or unauthorized storage access effectively possible?
5. Is the internet-exposed management rule approved and still required?
6. Are diagnostic and audit logs centrally retained for incident response?
7. Which Defender for Cloud recommendations require immediate remediation or formal risk acceptance?

## Recommended Handoff Path

- Identity owners validate users, service principals, MFA, and Conditional Access.
- Subscription and resource owners validate Azure RBAC scope and business need.
- Cloud security validates storage, network, logging, and security posture findings.
- Incident response reviews evidence if active misuse or compromise indicators appear.
- Authorized change owners approve, test, and implement remediation.

## Decision Boundary

The analyst identifies risk and analyst recommendations. The analyst does not independently remove access, change network rules, enforce policy, declare compromise, accept risk, or make legal/compliance determinations.

## Evidence Boundary

This handoff uses simulated, sanitized Microsoft Azure-style findings. It does not claim production SOC employment, tenant ownership, enterprise authority, real customer data access, or completed production remediation.
