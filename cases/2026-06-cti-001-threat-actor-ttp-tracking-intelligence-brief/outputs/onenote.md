# CTI-001 OneNote Notes

## What This Case Is

Threat actor TTP tracking and finished intelligence reporting.

Fictional activity cluster: `Silver Orchard`

The case is built around cloud identity, phishing, credential abuse, password spraying, Microsoft Entra ID-style sign-in activity, suspicious infrastructure, detection opportunities, and analytic confidence.

## What Worked

- Strong CTI angle without claiming production threat intel access.
- Clear distinction between observed evidence and analytic judgment.
- Identity-first story fits the current portfolio direction after SOC-022 and SOC-023.
- Uses MITRE ATT&CK where it fits instead of forcing mappings.
- Keeps indicators fictional and inactive.
- Recruiter-readable: shows CTI, cloud identity, detection thinking, and leadership reporting.

## Main Activity Pattern

Observed:

- Phishing lure with cloud document / vendor review theme.
- Password spraying across many cloud identity accounts.
- Suspicious cloud-hosted infrastructure patterns.
- Possible follow-on hosted email and document portal access.

Judgment:

- Likely goal is valid cloud account access.
- Actor probably wants email, documents, vendor communication, or business workflow context.
- Not enough evidence to claim malware, data theft, ransomware staging, or real attribution.

## MITRE ATT&CK Used

- `T1566.002 - Phishing: Spearphishing Link`
- `T1110.003 - Password Spraying`
- `T1078 - Valid Accounts`
- `T1583.001 - Acquire Infrastructure: Domains`
- `T1090 - Proxy` as low-confidence only

## Detection Ideas

- Failed sign-ins across many users from related infrastructure.
- Successful sign-in after spray attempts.
- Suspicious MFA prompt patterns.
- Mailbox forwarding or inbox rule creation after unusual sign-in.
- OAuth consent grants after suspicious authentication.
- First-time cloud document access from unusual source.
- Recently registered domains using cloud-sharing or vendor-review language.

## Portfolio Boundary

Do not say:

- I performed real-world threat actor attribution.
- I used classified reporting.
- I used CrowdStrike or proprietary CTI.
- I reviewed customer data.
- I reverse engineered malware.
- I worked a production SOC case.

Safe phrasing:

- Simulated CTI case.
- Fictional activity cluster.
- Sanitized public-style reporting notes.
- Microsoft Entra ID-style evidence.
- Defensive recommendations.
- Analytic confidence.
- Finished intelligence brief.

## Interview Story

I built a simulated CTI case focused on a fictional activity cluster targeting cloud identity. I reviewed phishing lure details, sign-in patterns, suspicious infrastructure, cloud service access, and simulated indicators. Then I separated observed evidence from analytic judgment, mapped reasonable MITRE ATT&CK techniques, assigned confidence levels, and produced defensive recommendations for detection and escalation.

The important part was avoiding overclaiming. I did not call it malware. I did not name a real actor. I treated attribution as activity-cluster tracking and kept the brief focused on what defenders could monitor.

## Next Improvements

- Could add a simulated timeline in a future version.
- Could add a separate detection engineering companion case.
- Could add a sample intelligence requirements section if the portfolio expands deeper into CTI.
- Could connect this case to SOC-023 through cloud identity detection and MFA review.
