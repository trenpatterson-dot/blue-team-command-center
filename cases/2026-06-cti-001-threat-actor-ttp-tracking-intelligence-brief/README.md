# CTI-001: Threat Actor TTP Tracking and Intelligence Brief

## Case Type

Documentation-first Cyber Threat Intelligence case study using realistic, simulated, sanitized evidence.

## Recruiter Snapshot

This case demonstrates CTI analysis across threat actor tracking, TTPs, phishing, credential abuse, password spraying, cloud identity targeting, Microsoft Entra ID risk, adversary infrastructure patterns, analytic confidence, defensive recommendations, and finished intelligence reporting.

The analyst reviews fictional open-source-style reporting notes, simulated indicators of compromise, observed behaviors, and campaign patterns to produce an intelligence brief for defenders and leadership. The case does not claim malware reverse engineering, classified access, proprietary intelligence access, customer data access, production SOC employment, or real-world attribution authority.

## Case Files

- [Analyst handoff](HANDOFF.md)
- [ELI10 summary](outputs/eli10.md)
- [Technical summary](outputs/technical.md)
- [Executive summary](outputs/executive-summary.md)
- [LinkedIn draft](outputs/linkedin.md)
- [OneNote notes](outputs/onenote.md)

## Intelligence Objective

Assess a fictional activity cluster targeting cloud-hosted business services and identity infrastructure, identify observed behaviors, map reasonable MITRE ATT&CK techniques, judge likely objectives, and recommend defensive detection opportunities.

## Scope and Assumptions

| Area | Simulated Review Scope | Analyst Focus |
| --- | --- | --- |
| Activity tracking | Fictional activity cluster `Silver Orchard` | Campaign pattern, likely objective, confidence level |
| Initial access | Simulated phishing and identity attack notes | Lure theme, credential collection, password spraying |
| Cloud identity | Microsoft Entra ID-style sign-in evidence | Failed attempts, MFA prompts, risky sign-in patterns |
| Cloud services | Business email and document platform targeting | SaaS access patterns and post-authentication interest |
| Infrastructure | Sanitized adversary infrastructure notes | Domain age, hosting pattern, redirect behavior |
| Indicators | Fictional domains, IP ranges, user agents, and paths | Defensive enrichment only; no active malicious infrastructure |
| Reporting | Finished intelligence brief | Clear difference between observed evidence and analytic judgment |

This case assumes the evidence was collected from sanitized lab notes, public-style reporting, and simulated telemetry summaries. It does not use real victim names, active IOCs, live tenant IDs, private data, employer material, or customer evidence.

## Activity Cluster Overview

`Silver Orchard` is a fictional threat activity cluster assessed to be targeting cloud identity accounts used by business, finance, operations, and IT support staff.

The cluster appears to favor identity-focused access over endpoint malware. Simulated reporting shows repeated credential collection attempts, password spraying against Microsoft Entra ID-style accounts, use of legitimate cloud login pages as visual references, and suspicious follow-on access attempts against hosted email and file-sharing services.

## Collection Sources Used

- Sanitized open-source-style reporting notes
- Simulated phishing lure samples
- Simulated Microsoft Entra ID sign-in summaries
- Simulated cloud application access summaries
- Simulated DNS and infrastructure enrichment notes
- Simulated mailbox rule and OAuth consent review notes
- Fictional incident ticket excerpts
- Analyst-created timeline and confidence assessment

## Evidence Reviewed

| Evidence Item | Observed Detail | Confidence |
| --- | --- | --- |
| Phishing lure summary | Fake cloud storage notification referencing "Quarterly Vendor Access Review" | High |
| Sign-in summary | Multiple failed attempts across many users from rotating cloud-hosted IP ranges | High |
| Authentication pattern | Low-volume attempts spread across departments over several days | Moderate |
| Cloud service access | Successful sign-in attempt followed by document portal access in one simulated account | Moderate |
| Infrastructure note | Newly registered domains using similar naming, TLS certificates, and redirect paths | Moderate |
| User agent summary | Browser-like user agents with repeated automation-style timing | Low |
| Mailbox rule review | One suspicious forwarding-rule attempt after a simulated successful login | Low |

## Observed Behaviors

- Phishing emails used a vendor-access review theme.
- The lure pushed users toward a fake cloud document page.
- Sign-in activity showed distributed password spraying rather than noisy brute force.
- Attempts targeted cloud identity accounts, including Microsoft Entra ID-style users.
- Several attempts came from cloud-hosted infrastructure with short-lived IP rotation.
- One simulated account showed suspicious cloud application access after authentication.
- The activity used normal browser flows and legitimate cloud services where possible.
- No malware payload, command-and-control beacon, or endpoint persistence was observed in the evidence.

## TTP Analysis

### Observed Evidence

- The campaign relied on phishing and credential abuse.
- Password spraying was visible through repeated failed sign-ins across many accounts.
- The target pattern focused on cloud identity and hosted business applications.
- Infrastructure showed disposable registration and hosting traits.
- The activity avoided obvious malware delivery in the reviewed evidence.

### Analytic Judgment

The likely objective was valid-account access to business cloud services, not endpoint compromise. The cluster appears designed to collect credentials, test access quietly, and use legitimate cloud workflows to blend in after successful authentication.

Analytic confidence is moderate. The simulated evidence supports a consistent identity-focused campaign pattern, but it does not prove real-world actor identity, malware use, data theft, persistence, or final impact.

## MITRE ATT&CK Mapping

| Technique | Relevance | Confidence |
| --- | --- | --- |
| `T1566.002 - Phishing: Spearphishing Link` | Simulated lure directed users to a fake cloud document page. | High |
| `T1110.003 - Password Spraying` | Sign-in evidence showed broad, low-frequency attempts across many accounts. | High |
| `T1078 - Valid Accounts` | Successful access would depend on captured or guessed credentials. | Moderate |
| `T1583.001 - Acquire Infrastructure: Domains` | Fictional domains were newly registered with similar naming patterns. | Moderate |
| `T1584.008 - Compromise Infrastructure: Network Devices` | Not mapped; no evidence supported compromised routing or device infrastructure. | Not used |
| `T1090 - Proxy` | Possible use of cloud-hosted forwarding infrastructure, but evidence is not strong enough for firm mapping. | Low |
| `T1114 - Email Collection` | Not mapped as observed; only a suspicious mailbox access pattern was present. | Not used |
| `T1136 - Create Account` | Not mapped; no account creation activity was observed. | Not used |

Mappings are included only where the simulated evidence supports them. This case avoids forcing techniques when the evidence does not justify the claim.

## Targeting and Motivation Assessment

`Silver Orchard` likely targets organizations that rely heavily on cloud-hosted business services, federated identity, shared document portals, and email-based workflows.

Assessed likely objectives:

1. Capture or validate cloud credentials.
2. Identify accounts with access to business documents, invoices, vendor communications, or internal operations data.
3. Use legitimate cloud access to reduce detection friction.
4. Preserve access long enough to review email, files, or collaboration activity.

Confidence: moderate.

The evidence supports identity and cloud service targeting. It does not prove financial theft, espionage, extortion, or malware deployment.

## Indicator Summary

All indicators below are fictional and inactive examples for portfolio documentation.

| Indicator Type | Simulated Indicator | Notes |
| --- | --- | --- |
| Activity cluster | `Silver Orchard` | Fictional label for this case only |
| Phishing subject | `Quarterly Vendor Access Review Required` | Simulated lure theme |
| Domain pattern | `secure-share-review.example` | Fictional domain format |
| Domain pattern | `vendor-access-cloud.example` | Fictional domain format |
| URL path | `/signin/review/sharepoint/` | Simulated credential-collection path |
| IP pattern | `203.0.113.0/24` | Documentation-only TEST-NET-3 range |
| IP pattern | `198.51.100.0/24` | Documentation-only TEST-NET-2 range |
| User agent | `Mozilla/5.0 simulated browser` | Sanitized browser-like string |
| Cloud app | Microsoft Entra ID / hosted email / document portal | Simulated service categories |

These are not active indicators of compromise and should not be blocklisted as real malicious infrastructure.

## Confidence Levels

| Judgment | Confidence | Reason |
| --- | --- | --- |
| The campaign is identity-focused | High | Multiple simulated evidence types point to credential collection and sign-in attempts. |
| Password spraying occurred | High | Sign-in pattern shows broad targeting with repeated failures across accounts. |
| Cloud services were a primary target | Moderate | Evidence shows hosted email and document access interest after authentication. |
| The same cluster controlled all infrastructure | Moderate | Domain and hosting patterns are similar, but not conclusive. |
| The activity used malware | Low | No malware delivery or endpoint execution evidence was reviewed. |
| The actor's real-world identity is known | Low | This case does not make attribution claims. |

## Analytic Judgments

- `Silver Orchard` is best treated as an identity-first activity cluster.
- The strongest observed pattern is phishing plus password spraying against cloud identity.
- The likely operational goal is access to business cloud services through valid accounts.
- Defensive priority should focus on sign-in anomaly detection, phishing reporting, MFA strength, conditional access, impossible travel review, suspicious inbox rules, OAuth consent review, and cloud application audit visibility.
- Attribution should remain at the activity-cluster level. The evidence does not support naming a real threat actor.

## Defensive Recommendations

1. Enforce strong MFA and phishing-resistant authentication for privileged and high-risk accounts.
2. Review Microsoft Entra ID sign-in logs for distributed password spraying patterns.
3. Alert on repeated failures across many users from shared infrastructure ranges.
4. Alert on successful sign-ins following prior spray attempts.
5. Monitor suspicious mailbox rules, external forwarding, and unusual OAuth consent grants.
6. Review new domains and redirect chains reported in phishing submissions.
7. Tune detections for cloud-hosted infrastructure patterns while avoiding broad provider blocklists.
8. Document escalation paths for confirmed credential abuse.
9. Train users to report cloud-sharing and vendor-review lures.
10. Keep CTI reporting tied to evidence, confidence, and defender action.

## Detection Opportunities

| Detection Opportunity | Signal | Priority |
| --- | --- | --- |
| Password spray across users | Many failed sign-ins across accounts from related infrastructure | High |
| Success after spray | Successful sign-in after prior failures from same pattern | High |
| Suspicious MFA behavior | Repeated prompts, denied prompts, or unusual authentication method use | High |
| New inbox rule | External forwarding or rule creation after unusual sign-in | High |
| OAuth consent anomaly | New consent grant after suspicious authentication | Medium |
| Newly registered lookalike domain | Vendor or cloud-sharing theme with recent registration | Medium |
| Cloud app access anomaly | First-time access to document portal from unusual source | Medium |
| Infrastructure rotation | Multiple cloud-hosted sources with similar timing and user agents | Medium |

## Escalation Criteria

Escalate to authorized incident response or identity owners when any of the following are observed:

- Successful authentication after password spraying.
- Privileged account targeted or accessed.
- MFA fatigue pattern or suspicious MFA approval.
- New mailbox forwarding rule or suspicious inbox manipulation.
- OAuth consent grant from an unapproved application.
- Access to sensitive document repositories after unusual sign-in.
- Multiple users report the same phishing lure.
- Confirmed credential submission to a phishing page.

## Executive Summary

The simulated CTI review identified a fictional activity cluster, `Silver Orchard`, targeting cloud identity and hosted business services through phishing and password spraying. The strongest evidence points to credential abuse against Microsoft Entra ID-style accounts and suspicious follow-on interest in email and document access.

The case supports defensive action around sign-in monitoring, phishing response, MFA strength, cloud application auditing, and suspicious infrastructure review. The evidence does not support malware claims, real-world attribution, customer impact, or production remediation claims.

## Analyst Limitations

- No malware reverse engineering was performed.
- No classified, proprietary, CrowdStrike, customer, employer, or production intelligence was used.
- No live tenant, endpoint, mailbox, or cloud environment was accessed.
- No real malicious infrastructure, victim details, tenant IDs, credentials, or private data are included.
- Attribution is limited to a fictional activity cluster label for portfolio analysis.
- Findings are based on simulated evidence and public-style CTI concepts.

## Evidence Boundary / Lab Disclaimer

This is a simulated, premise-based portfolio case study. It demonstrates CTI reasoning, threat actor tracking, TTP analysis, MITRE ATT&CK mapping, indicators of compromise handling, analytic confidence, finished intelligence reporting, and defensive recommendations.

It does not represent production SOC employment, live threat intelligence team access, classified access, customer data access, employer work, real-world attribution authority, or completed remediation.
