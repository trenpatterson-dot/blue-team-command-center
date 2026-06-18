# IAM-011: Identity Attack Path Review

## Case Type

Lab-based portfolio review using simulated identity-risk scenarios.

## Recruiter Snapshot

This case demonstrates how a SOC or IAM analyst can review identity attack paths before they become incidents. The review focuses on weak MFA coverage, excessive permissions, privileged accounts, stale accounts, and Conditional Access gaps.

This is a simulated review. It does not represent production SOC employment, live tenant access, or authority to change identity controls.

## Scenario

An organization wants to understand how an attacker could move from a compromised user or service account into privileged access. The analyst reviews likely attack paths and identifies control improvements.

## Files

- [Attack path analysis](ATTACK-PATH-ANALYSIS.md)
- [Conditional Access review](CONDITIONAL-ACCESS-REVIEW.md)
- [Privileged account review](PRIVILEGED-ACCOUNT-REVIEW.md)
- [Remediation plan](REMEDIATION-PLAN.md)
- [Executive summary](EXECUTIVE-SUMMARY.md)
- [Attack scenarios](EVIDENCE/attack-scenarios.md)
- [Identity risk register](EVIDENCE/identity-risk-register.json)

## Analyst Focus

- Identify identity paths that could lead to privileged access.
- Separate likely risk from confirmed compromise.
- Recommend MFA, least privilege, access review, and monitoring improvements.
- Keep remediation approval with authorized identity and security owners.

## Final Determination

The simulated review found elevated identity attack-path risk where compromised users, stale accounts, service accounts, or weak Conditional Access could lead to broader access. Recommended actions require owner review and controlled remediation.
