# CTI-001 Executive Summary

## Summary

This simulated Cyber Threat Intelligence review tracks a fictional activity cluster, `Silver Orchard`, targeting cloud-hosted business services and identity infrastructure.

The strongest evidence points to phishing, credential abuse, password spraying, and suspicious access attempts against Microsoft Entra ID-style cloud identity accounts. The activity appears designed to obtain valid account access, then use normal cloud services such as hosted email and document portals.

## Key Judgments

| Judgment | Confidence |
| --- | --- |
| The activity is identity-focused | High |
| Password spraying is part of the observed behavior | High |
| Cloud-hosted business services are likely targets | Moderate |
| Suspicious infrastructure is connected to the same cluster | Moderate |
| Malware use is supported by the evidence | Low |
| Real-world attribution is supported by the evidence | Low |

## Business Risk

The main risk is unauthorized cloud account access. If credentials are captured or guessed, an attacker could access email, documents, vendor communications, or other business workflows without needing malware.

This does not prove data theft, financial fraud, ransomware staging, or production compromise. It identifies a plausible identity-driven threat pattern that defenders should monitor.

## Defensive Priorities

1. Monitor for password spraying across cloud identity accounts.
2. Alert on successful sign-ins after repeated failed attempts.
3. Strengthen MFA and review phishing-resistant authentication for privileged users.
4. Monitor suspicious MFA prompts, mailbox rules, external forwarding, and OAuth consent grants.
5. Review cloud document and email access after unusual authentication.
6. Keep CTI reporting tied to evidence, confidence, and defender action.

## Recommended Decision

Treat `Silver Orchard` as an identity-focused activity cluster for defensive tracking. Prioritize detection opportunities around Microsoft Entra ID sign-ins, phishing reports, credential abuse, password spraying, suspicious cloud app access, and adversary infrastructure patterns.

## Boundary

This is a lab-based portfolio case using simulated evidence. It does not use live customer data, employer systems, classified reporting, proprietary intelligence, active malicious infrastructure, or real victim details.
