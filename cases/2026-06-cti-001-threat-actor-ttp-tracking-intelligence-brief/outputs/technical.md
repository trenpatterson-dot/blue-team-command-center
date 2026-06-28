# CTI-001 Technical Summary

## Case

Threat Actor TTP Tracking and Intelligence Brief

## Objective

Review simulated Cyber Threat Intelligence evidence for a fictional activity cluster targeting cloud-hosted business services and identity infrastructure. The goal is to identify observed behaviors, map reasonable MITRE ATT&CK techniques, assess likely objectives, document analytic confidence, and produce defender-focused recommendations.

## Activity Cluster

`Silver Orchard`

This is a fictional activity cluster name created for a lab-based portfolio case. It is not a real attribution claim.

## Scope

- Sanitized open-source-style reporting notes
- Simulated phishing lure details
- Simulated Microsoft Entra ID-style sign-in summaries
- Simulated cloud application access notes
- Simulated adversary infrastructure enrichment
- Fictional indicators of compromise
- Analytic confidence assessment
- Finished intelligence reporting

## Collection Sources Used

The case uses simulated reporting notes, phishing lure summaries, sign-in telemetry summaries, DNS-style infrastructure notes, and cloud application access summaries. The evidence is designed to look like public-style CTI material without including real malicious infrastructure, active IOCs, customer data, tenant IDs, credentials, or employer material.

## Evidence Reviewed

| Evidence | Observation | Confidence |
| --- | --- | --- |
| Phishing lure | Fake cloud storage notice using "Quarterly Vendor Access Review" language | High |
| Sign-in activity | Failed attempts across many users from rotating cloud-hosted ranges | High |
| Authentication pattern | Low-volume password attempts spread over several days | Moderate |
| Cloud service access | One simulated account accessed hosted email and a document portal after suspicious login activity | Moderate |
| Infrastructure | Newly registered fictional domains with similar naming and redirect paths | Moderate |
| Mailbox rule activity | One suspicious forwarding-rule attempt after unusual sign-in | Low |

## Observed Behaviors

- Phishing used a cloud document and vendor review theme.
- The lure attempted to collect cloud identity credentials.
- Sign-in attempts resembled password spraying against Microsoft Entra ID-style accounts.
- Attempts targeted business, finance, operations, and IT support users.
- Infrastructure patterns suggested disposable domain registration and short-lived hosting.
- The activity used normal browser-like flows instead of obvious malware delivery.
- One simulated account showed suspicious cloud application access after authentication.

## TTP Analysis

The strongest evidence supports an identity-first campaign. The simulated actor appears focused on phishing, credential abuse, password spraying, and cloud service access. There is no reviewed evidence of malware execution, endpoint persistence, command-and-control beaconing, or real-world data theft.

The main risk is valid-account access. If an attacker obtains a working password, approves or bypasses MFA, or finds a weakly protected account, they may gain access to hosted email, document portals, and business applications while blending into normal cloud workflows.

## MITRE ATT&CK Mapping

| Technique | Why It Applies | Confidence |
| --- | --- | --- |
| `T1566.002 - Phishing: Spearphishing Link` | The simulated lure directed users to a fake cloud document sign-in page. | High |
| `T1110.003 - Password Spraying` | Sign-in patterns showed broad targeting with low-frequency password attempts. | High |
| `T1078 - Valid Accounts` | Credential abuse is the likely path after successful collection or guessing. | Moderate |
| `T1583.001 - Acquire Infrastructure: Domains` | Fictional domains were newly registered and followed similar naming patterns. | Moderate |
| `T1090 - Proxy` | Cloud-hosted source rotation may indicate forwarding or proxy behavior, but evidence is limited. | Low |

Mappings were not forced where evidence was weak. Email collection, account creation, malware execution, and persistence were not mapped as observed.

## Targeting and Motivation Assessment

The cluster likely targets organizations that rely on cloud identity, hosted email, document sharing, and vendor workflows. The simulated phishing theme suggests interest in business process access rather than endpoint disruption.

Assessed likely objectives:

1. Capture or validate user credentials.
2. Gain access to cloud-hosted business services.
3. Review email, vendor communication, documents, or internal workflow context.
4. Use legitimate access paths to avoid noisy endpoint indicators.

Analytic confidence: moderate.

The evidence supports identity and cloud service targeting. It does not prove espionage, fraud, ransomware staging, extortion, or data theft.

## Indicator Summary

All indicators are fictional and inactive:

- Activity cluster: `Silver Orchard`
- Phishing theme: `Quarterly Vendor Access Review Required`
- Domain pattern: `secure-share-review.example`
- Domain pattern: `vendor-access-cloud.example`
- URL path: `/signin/review/sharepoint/`
- IP range: `203.0.113.0/24`
- IP range: `198.51.100.0/24`
- Target services: Microsoft Entra ID-style cloud identity, hosted email, cloud document portal

These indicators are documentation examples only. They should not be used as real blocklist entries.

## Analytic Confidence

| Judgment | Confidence |
| --- | --- |
| Campaign is identity-focused | High |
| Password spraying occurred | High |
| Cloud services were a primary target | Moderate |
| Shared infrastructure belongs to one cluster | Moderate |
| Malware was used | Low |
| Real-world actor attribution is possible from this evidence | Low |

## Defensive Recommendations

1. Monitor Microsoft Entra ID sign-ins for distributed password spraying.
2. Alert on success-after-spray patterns.
3. Enforce strong MFA, with phishing-resistant methods for privileged and high-risk accounts.
4. Review suspicious MFA prompts, denied prompts, and unusual authentication method changes.
5. Monitor mailbox forwarding, inbox rule creation, and unusual OAuth consent grants.
6. Review access to hosted email and document portals after risky sign-in activity.
7. Enrich phishing submissions with domain age, redirect paths, hosting provider, and naming patterns.
8. Avoid broad cloud-provider blocking unless confirmed by owner-approved investigation.
9. Treat CTI reporting as decision support, not proof of impact.

## Detection Opportunities

- Failed sign-ins across many users from related infrastructure.
- Successful sign-in following failed spray attempts.
- New inbox rule or external forwarding after suspicious login.
- New OAuth consent grant following unusual authentication.
- First-time document portal access from unusual source infrastructure.
- Multiple phishing reports using the same vendor-access theme.
- Recently registered domains using cloud-sharing language.

## Escalation Criteria

Escalate when a privileged account is targeted, credentials are confirmed submitted, sign-in succeeds after spraying, suspicious MFA approval occurs, mailbox forwarding is created, OAuth consent is granted, or sensitive cloud documents are accessed after unusual authentication.

## Determination

`Silver Orchard` should be tracked as a fictional identity-focused activity cluster using phishing, password spraying, cloud identity targeting, and suspicious infrastructure patterns. Defensive priority should focus on cloud identity detections, phishing response, MFA strength, cloud application audit visibility, and evidence-based escalation.

## Evidence Boundary

This is a simulated portfolio case. No live tenant, employer data, customer intelligence, classified reporting, proprietary CTI platform, CrowdStrike access, malware reverse engineering, active IOC, or real victim detail was used.
