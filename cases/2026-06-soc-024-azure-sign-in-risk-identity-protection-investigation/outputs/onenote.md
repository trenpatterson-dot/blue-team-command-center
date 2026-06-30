# SOC-024 OneNote Notes

## Case

Azure Sign-In Risk / Identity Protection Investigation

## What This Case Shows

This is an identity-focused SOC triage case. The useful angle is the decision logic:

- Conditional access blocked the suspicious session.
- That does not make the case safe.
- The password step appeared to succeed.
- MFA prompts were generated from an unfamiliar location.
- User denial of MFA is a strong signal.
- Response should focus on credential exposure and session cleanup.

## Fictional User

- User: `maria.ellis@contoso-lab.example`
- Role: Finance analyst
- Privilege: Standard user, no directory admin role
- Normal location: Florida
- Normal device: Managed Windows 11 laptop
- Normal browser: Edge
- Sensitive context: finance data access, SharePoint, Microsoft 365

## Simulated Risk Pattern

Normal sign-in from Florida, then:

1. Multiple failed password attempts from unfamiliar international IP.
2. Password-accepted attempt from a second unfamiliar international IP.
3. MFA push prompts generated.
4. User denies MFA.
5. Conditional access blocks the session.
6. Similar failures appear against two other finance users.

Main framing: suspected credential exposure with blocked access.

## Evidence Reviewed

- Azure sign-in logs
- Microsoft Entra ID / Identity Protection-style risky sign-in alert
- Failed sign-ins
- Password-accepted event
- MFA prompt behavior
- Conditional access result
- IP and location pattern
- Device/browser details
- Related user failures

## Analyst Decision

Escalate. Do not call it confirmed account takeover.

Suggested wording:

> Evidence supports suspected credential exposure. Conditional access blocked the suspicious session, but the password step and MFA prompts require containment and follow-on review.

## Response Recommendations

- Validate activity with the user through approved process.
- Reset password.
- Revoke sessions and refresh tokens.
- Require MFA re-registration.
- Review authentication methods.
- Review mailbox, SharePoint, Teams, and finance app activity.
- Search same IP/user agent against related users.
- Monitor account for 24 to 72 hours.

## MITRE Mapping

Use:

- `T1110.003 - Password Spraying`
- `T1078 - Valid Accounts`
- `T1621 - Multi-Factor Authentication Request Generation`

Do not use:

- `T1098 - Account Manipulation`

Reason: no evidence of role changes, group changes, OAuth grants, inbox rules, MFA method changes, or account setting changes.

## Portfolio Boundary

Say this every time if reused:

This is simulated portfolio work. No real Microsoft tenant access, no customer data, no employer screenshots, no production SOC claim, and no legal/compliance authority.

## Interview Version

I investigated a simulated Microsoft Entra ID risky sign-in where conditional access blocked the suspicious session, but the password step appeared to succeed before MFA. I reviewed sign-in logs, MFA behavior, risk level, device details, impossible travel-style timing, and similar failures against related users. My decision was suspected credential exposure with blocked access, so I recommended password reset, session revocation, MFA re-registration, application activity review, and monitoring.

## Gotchas

- Do not overstate it as confirmed compromise.
- Do not imply real tenant access.
- Do not use real IPs or real user data.
- Do not claim to reset accounts or revoke sessions personally.
- Keep the win focused on analyst judgment: blocked access still needed containment because credentials may have been exposed.
