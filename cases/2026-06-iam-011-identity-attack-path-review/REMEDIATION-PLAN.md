# Remediation Plan

## Remediation Position

The analyst recommends reducing identity attack-path risk through controlled, owner-approved improvements. No production changes are performed in this portfolio case.

## Recommended Actions

| Priority | Action | Owner |
| --- | --- | --- |
| High | Validate MFA coverage for privileged and high-risk users | IAM owner |
| High | Review standing privileged access and direct admin assignments | Identity security owner |
| High | Review service accounts with broad permissions | Application or platform owner |
| Medium | Review stale accounts and remove access only after approval | IAM operations |
| Medium | Document Conditional Access exclusions and review dates | Security architecture |
| Medium | Monitor privileged sign-ins, group changes, and policy changes | SOC / detection engineering |

## Change-Control Notes

- Test Conditional Access changes before enforcement.
- Confirm business owners before removing access.
- Preserve emergency access procedures.
- Document rollback plans for identity-policy changes.
- Record risk acceptance when remediation is deferred.

## Final Recommendation

Prioritize privileged access, MFA enforcement, service-account review, and stale-account cleanup because those areas most directly reduce attack-path impact.
