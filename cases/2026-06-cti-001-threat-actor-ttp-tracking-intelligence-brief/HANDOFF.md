# HANDOFF: CTI-001 Threat Actor TTP Tracking and Intelligence Brief

## Project

CTI-001: Threat Actor TTP Tracking and Intelligence Brief

## Status

Documentation complete for human review. No live investigation, production action, external reporting, blocklist update, takedown request, or Git action was performed.

## Goal

Present a recruiter-ready, simulated Cyber Threat Intelligence case covering threat actor tracking, TTPs, MITRE ATT&CK mapping, indicators of compromise handling, cloud identity targeting, Microsoft Entra ID-style credential abuse, analytic confidence, detection opportunities, defensive recommendations, and finished intelligence reporting.

## Scenario

A simulated security team is tracking a fictional activity cluster targeting cloud-hosted business services and identity infrastructure. The analyst reviews sanitized public-style notes, simulated phishing lures, sign-in patterns, infrastructure summaries, and cloud service access details to produce a finished intelligence brief for defenders and leadership.

## Fictional Activity Cluster

`Silver Orchard`

## Deliverables

- [Case README](README.md)
- [ELI10 summary](outputs/eli10.md)
- [Technical summary](outputs/technical.md)
- [Executive summary](outputs/executive-summary.md)
- [LinkedIn draft](outputs/linkedin.md)
- [OneNote notes](outputs/onenote.md)

## Priority Analytic Judgments

1. `Silver Orchard` is assessed as an identity-first activity cluster.
2. The strongest observed pattern is phishing plus password spraying against cloud identity.
3. Microsoft Entra ID-style accounts, hosted email, and cloud document services are the main simulated targets.
4. Infrastructure patterns are suspicious but fictional and not suitable for real-world blocking.
5. The reviewed evidence does not support malware, endpoint persistence, real-world attribution, or confirmed data theft claims.

## Key TTPs

| Technique | Relevance | Confidence |
| --- | --- | --- |
| `T1566.002 - Phishing: Spearphishing Link` | Simulated cloud document lure. | High |
| `T1110.003 - Password Spraying` | Broad, low-frequency sign-in attempts across many accounts. | High |
| `T1078 - Valid Accounts` | Credential abuse is the likely path after successful collection or guessing. | Moderate |
| `T1583.001 - Acquire Infrastructure: Domains` | Fictional newly registered domains with similar naming. | Moderate |
| `T1090 - Proxy` | Possible cloud-hosted forwarding or proxy behavior; evidence is limited. | Low |

## Recommended Defender Handoff

- Identity team reviews Entra ID sign-in patterns, MFA strength, and conditional access coverage.
- SOC team monitors password spraying, success-after-spray, suspicious MFA prompts, and unusual cloud app access.
- Messaging team reviews phishing submissions, malicious-looking redirect patterns, and mailbox rule changes.
- Cloud app owners review OAuth consent events, document portal access, and external sharing anomalies.
- CTI analyst keeps reporting tied to evidence, confidence level, and actionability.

## Detection Opportunities

1. Repeated failed sign-ins across many users from related infrastructure.
2. Successful sign-in after prior spray attempts.
3. Suspicious MFA prompt patterns or unusual authentication method use.
4. New external mailbox forwarding rules after unusual sign-in.
5. New OAuth consent grant after suspicious authentication.
6. Newly registered domains using cloud-sharing or vendor-review themes.
7. First-time cloud document access from unusual geography or infrastructure.

## Escalation Criteria

Escalate if evidence shows:

- Successful authentication after password spraying.
- Targeting of privileged accounts.
- Suspicious MFA approval or MFA fatigue pattern.
- New mailbox forwarding or inbox manipulation.
- Unapproved OAuth consent grant.
- Access to sensitive document repositories after unusual sign-in.
- Multiple users reporting the same phishing lure.
- Confirmed credential submission to a phishing page.

## Decision Boundary

The analyst may review simulated evidence, identify TTPs, assign confidence, create an intelligence brief, and recommend detections. The analyst does not declare real-world attribution, modify production controls, block infrastructure, reset credentials, disable accounts, contact external parties, publish indicators, or claim customer impact.

## Evidence Boundary

This handoff uses fictional, sanitized evidence for a portfolio case. It does not claim production SOC employment, employer tenant access, live threat intelligence access, classified access, customer data access, proprietary intelligence access, malware reverse engineering, or real-world attribution authority.
