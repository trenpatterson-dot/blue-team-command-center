# SOC-024 Technical Summary

## Case

Azure Sign-In Risk / Identity Protection Investigation

## Objective

Review simulated Microsoft Entra ID risky sign-in evidence for a fictional finance user and determine whether the alert should be escalated, contained, monitored, or closed as benign.

## Scope

- Microsoft Entra ID-style Azure sign-in logs
- Identity Protection-style risky sign-in signal
- Failed and successful authentication attempts
- MFA prompt results
- Conditional access policy outcomes
- IP, location, device, browser, and client observations
- User/account context
- Related failed sign-ins against peer users
- Analyst response recommendations

## Simulated Pattern

The affected user, `maria.ellis@contoso-lab.example`, normally signs in from Florida using a managed Windows 11 device and Edge. The alert window shows repeated failed password attempts from a suspicious international location, followed by a password-accepted MFA challenge from another unfamiliar international location. MFA prompts are generated and one is denied by the user. Conditional access blocks the suspicious sign-in because the device is unmanaged, the sign-in is risky, and MFA is not satisfied.

This creates an impossible travel-style pattern and a credential exposure concern. It does not prove completed account compromise because no suspicious completed session is confirmed.

## Evidence Highlights

| Evidence | SOC Assessment |
| --- | --- |
| Normal Florida sign-in minutes before suspicious attempts | Establishes baseline and impossible travel-style timing |
| Multiple invalid password attempts from `203.0.113.77` | Supports password spraying or credential guessing hypothesis |
| Password accepted from `198.51.100.44` | Raises concern that valid credentials may be exposed |
| MFA prompts generated from unfamiliar location | Supports possible MFA request generation |
| MFA denied by user | Strong signal that the sign-in was not expected |
| Unknown Windows device and Chrome browser | Differs from baseline managed device |
| Conditional access blocked access | Reduced impact but did not eliminate credential risk |
| Similar failures against two finance users | Suggests broader department targeting |

## Detection Logic

The case uses a practical identity detection pattern:

1. Identify users with three or more failed sign-ins within a short window.
2. Correlate failed attempts with a later password-accepted sign-in or MFA challenge.
3. Compare source location and device details against recent user baseline.
4. Increase severity for impossible travel-style timing, unknown devices, denied MFA prompts, or high-risk conditional access results.
5. Search for similar source IPs or user agents across users in the same department.

This logic is written as lab documentation. Any production version would need testing, tuning, known-good travel handling, service account exclusions, false-positive review, and policy-owner approval.

## MFA and Conditional Access Review

Conditional access did its job by blocking the risky sign-in after MFA was not satisfied. That does not make the case benign.

The key distinction is:

- Blocked suspicious session: no confirmed unauthorized session.
- Password accepted before MFA: possible credential exposure.
- MFA denied by user: strong user-side signal that the attempt was not expected.

Because the password step appears successful, the recommended response is password reset, session revocation, MFA method review, and short-term monitoring.

## MITRE ATT&CK

- `T1110.003 - Password Spraying`: repeated failed attempts and related failures against other finance users support this hypothesis.
- `T1078 - Valid Accounts`: the suspicious sign-in reached the password-accepted / MFA-required stage.
- `T1621 - Multi-Factor Authentication Request Generation`: MFA prompts were generated after suspicious authentication activity.

`T1098 - Account Manipulation` was not mapped. The evidence does not show role changes, group changes, inbox rule creation, OAuth grant changes, or MFA method modification.

## Analyst Decision

Escalate as suspected credential exposure with blocked access.

The evidence is too risky to close as benign, but not strong enough to claim confirmed account compromise. The correct SOC framing is potential credential abuse stopped by conditional access, requiring containment and follow-on review.

## Recommendations

1. Validate with the user whether the sign-in and MFA prompts were expected.
2. Reset the account password through approved identity procedures.
3. Revoke active sessions and refresh tokens.
4. Require MFA re-registration and review registered methods.
5. Review recent mailbox, SharePoint, Teams, and finance application activity.
6. Search for password spraying patterns against related users.
7. Monitor the account and source indicators for 24 to 72 hours.
8. Tune risky sign-in alerts and conditional access response logic after testing.

## Evidence Boundary

This is simulated lab evidence only. No live Microsoft tenant access, production logs, employer data, customer records, credentials, tokens, legal authority, compliance finding, or completed remediation is claimed.
