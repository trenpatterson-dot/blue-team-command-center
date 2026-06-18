# Conditional Access Review

## Review Objective

Assess simulated Conditional Access weaknesses that could allow valid credentials to become a broader identity attack path.

## Key Observations

- MFA enforcement must be reviewed for all privileged and high-risk users.
- Legacy authentication should be blocked or tightly governed because it may bypass modern controls.
- Excluded users and groups need documented owners, reasons, and review dates.
- Risk-based policies should be tested before enforcement and monitored after rollout.

## Analyst Risk Notes

Weak Conditional Access does not prove compromise. It does increase the chance that password reuse, phishing, or credential theft could lead to unauthorized access.

## Recommendations

- Require MFA or stronger authentication for privileged roles.
- Review all Conditional Access exclusions.
- Block legacy authentication after dependency validation.
- Monitor risky sign-ins and policy changes.
- Require change approval before production enforcement.

## Evidence Boundary

This is simulated portfolio analysis. No live tenant policies were changed.
