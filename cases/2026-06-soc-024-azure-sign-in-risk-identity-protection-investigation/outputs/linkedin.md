Built a simulated Azure sign-in risk investigation. The key lesson: blocked access does not automatically mean low risk.

In this SOC case, a fictional finance user had normal Microsoft Entra ID activity from Florida, followed minutes later by failed sign-ins from an unfamiliar location and a password-accepted MFA prompt from another country.

Conditional access blocked the suspicious session. Good control. But the password step still appeared to succeed, MFA prompts were generated, and the device/browser did not match the user's normal pattern.

That changes the analyst decision.

I treated it as suspected credential exposure with blocked access, not confirmed account takeover and not benign activity. The recommended response was password reset, session revocation, MFA re-registration, recent app activity review, and short-term monitoring across related finance users.

Mapped techniques:
T1110.003 Password Spraying
T1078 Valid Accounts
T1621 MFA Request Generation

This was simulated portfolio work using fictional evidence, not production tenant data.

#CyberSecurity #BlueTeam #SOC #MicrosoftEntraID #IdentitySecurity #IncidentResponse
