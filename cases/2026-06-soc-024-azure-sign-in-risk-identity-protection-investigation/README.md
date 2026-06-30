# SOC-024: Azure Sign-In Risk / Identity Protection Investigation

## Case Type

Documentation-first SOC case study using realistic, simulated Microsoft Entra ID and Identity Protection evidence.

## Recruiter Snapshot

This case demonstrates SOC analyst alert triage for a risky sign-in involving Azure sign-in logs, Identity Protection signals, failed authentication attempts, a password-accepted MFA challenge after failures, MFA prompt behavior, suspicious geography, unfamiliar device details, and conditional access results.

The analyst reviews the evidence, builds a timeline, maps reasonable identity attack techniques, and recommends account response actions. The work is simulated portfolio documentation. It does not claim production SOC employment, real Microsoft tenant access, customer data access, employer investigation work, or authority to perform legal, compliance, or production remediation actions.

## Case Files

- [Analyst handoff](HANDOFF.md)
- [ELI10 summary](outputs/eli10.md)
- [Technical summary](outputs/technical.md)
- [Executive summary](outputs/executive-summary.md)
- [LinkedIn draft](outputs/linkedin.md)
- [OneNote notes](outputs/onenote.md)

## Investigation Objective

Determine whether a simulated Microsoft Entra ID risky sign-in alert for `maria.ellis@contoso-lab.example` should be escalated as possible account compromise, closed as benign, or moved into monitored containment.

The investigation focuses on identity security evidence: sign-in risk, authentication results, MFA behavior, conditional access outcomes, IP and location patterns, device details, and follow-on account activity.

## Scope and Assumptions

| Area | Simulated Scope | Analyst Focus |
| --- | --- | --- |
| Identity source | Microsoft Entra ID-style sign-in records | Authentication outcome, risk level, location, device, client |
| Risk source | Identity Protection-style alerts | Risk reason, risk level, confidence, response need |
| User account | One fictional workforce user | Normal access pattern, department, expected locations |
| Authentication | Password and MFA events | Failed attempts, successful access, MFA prompt behavior |
| Conditional Access | Policy evaluation results | Block, challenge, grant, failure, report-only signals |
| Response | Analyst recommendation only | Escalation, reset, session revocation, MFA re-registration, monitoring |

Assumptions:

- All evidence is simulated and sanitized for portfolio use.
- The fictional tenant is named `Contoso Lab`.
- IP addresses use documentation-safe ranges and are not tied to real victims.
- The analyst can recommend action but cannot perform production changes.
- Identity owners and authorized administrators approve account resets, session revocation, policy changes, and user contact.

## Alert Summary

| Field | Value |
| --- | --- |
| Alert name | Risky sign-in detected for workforce account |
| Source | Microsoft Entra ID Identity Protection-style alert |
| User | `maria.ellis@contoso-lab.example` |
| User role | Finance analyst, non-admin |
| Initial risk level | Medium |
| Highest observed risk level | High |
| Primary indicators | Repeated failed sign-ins, password-accepted MFA challenge from unusual location, unfamiliar browser, MFA prompt anomalies |
| Initial disposition | Escalate for containment and owner validation |
| Recommended response | Reset password, revoke sessions, require MFA re-registration, review mailbox/app activity, monitor for recurrence |

## Evidence Reviewed

- Simulated Azure sign-in logs for the affected account
- Identity Protection-style risky sign-in record
- Failed and successful authentication events
- MFA prompt and authentication method results
- Conditional access policy evaluation results
- User context and expected work pattern
- IP, location, browser, device, and operating system details
- Follow-on application activity checks after the suspicious sign-in attempt
- Similar failed sign-ins against other users for password spraying context

No real Microsoft tenant exports, screenshots, credentials, tokens, customer records, employer data, or production user data were used.

## Timeline of Activity

| Time (UTC) | Event | Result | Risk |
| --- | --- | --- | --- |
| 2026-06-28 13:58 | Normal sign-in from Orlando, FL on managed Windows device | Success, MFA satisfied | Low |
| 2026-06-28 14:03 | Five failed password attempts from `203.0.113.77`, Lagos, NG | Failure, invalid password | Medium |
| 2026-06-28 14:05 | Failed sign-in from `203.0.113.77` with unfamiliar Chrome browser | Failure, MFA not reached | Medium |
| 2026-06-28 14:09 | Password accepted from `198.51.100.44`, Amsterdam, NL | MFA challenge required; no session established | High |
| 2026-06-28 14:10 | MFA push prompt generated | User did not respond | High |
| 2026-06-28 14:11 | Second MFA push prompt generated | Denied by user | High |
| 2026-06-28 14:12 | Conditional access evaluated sign-in as risky | Access blocked after MFA failure | High |
| 2026-06-28 14:16 | Sign-in attempt from `198.51.100.44` using same user agent | Failure, session not established | High |
| 2026-06-28 14:22 | Two other finance users receive failed sign-ins from `203.0.113.77` | Failures, invalid password | Medium |
| 2026-06-28 14:31 | Analyst triage begins | Account response recommended | High |

The timeline creates an impossible travel-style pattern because the account had a normal successful sign-in from Florida minutes before password attempts and MFA prompts appeared from international locations.

## User / Account Context

| Field | Simulated Detail |
| --- | --- |
| User | `maria.ellis@contoso-lab.example` |
| Department | Finance |
| Role | Finance analyst |
| Privilege level | Standard user, no privileged directory role |
| Normal location | Florida, United States |
| Normal device | Managed Windows 11 laptop, Edge browser |
| Normal applications | Microsoft 365, SharePoint finance site, Teams |
| Baseline travel | No international travel recorded in the simulated case notes |
| Recent access changes | No simulated group or role changes found during triage |

The account is not privileged, but finance access increases business impact. A successful password check plus MFA prompt behavior is enough to treat the event as potential credential exposure until validated.

## Simulated Entra ID Sign-In Evidence

| Event ID | Time (UTC) | IP | Location | App | Client / Browser | Device | Result | MFA | Conditional Access |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `SIG-024-001` | 2026-06-28 13:58 | `192.0.2.24` | Orlando, US | Microsoft 365 | Edge 126 | Managed Windows 11 | Success | Satisfied | Grant |
| `SIG-024-002` | 2026-06-28 14:03 | `203.0.113.77` | Lagos, NG | Microsoft 365 | Chrome 124 | Unknown Windows | Failure: bad password | Not reached | Not applied |
| `SIG-024-003` | 2026-06-28 14:04 | `203.0.113.77` | Lagos, NG | Microsoft 365 | Chrome 124 | Unknown Windows | Failure: bad password | Not reached | Not applied |
| `SIG-024-004` | 2026-06-28 14:05 | `203.0.113.77` | Lagos, NG | Microsoft 365 | Chrome 124 | Unknown Windows | Failure: bad password | Not reached | Not applied |
| `SIG-024-005` | 2026-06-28 14:09 | `198.51.100.44` | Amsterdam, NL | SharePoint Online | Chrome 124 | Unknown Windows | Interrupted | Required | Blocked after MFA failure |
| `SIG-024-006` | 2026-06-28 14:11 | `198.51.100.44` | Amsterdam, NL | SharePoint Online | Chrome 124 | Unknown Windows | Failure: MFA denied | Denied | Blocked |
| `SIG-024-007` | 2026-06-28 14:16 | `198.51.100.44` | Amsterdam, NL | Exchange Online | Chrome 124 | Unknown Windows | Failure: risky sign-in blocked | Not satisfied | Blocked |

Documentation ranges used: `192.0.2.0/24`, `198.51.100.0/24`, and `203.0.113.0/24`.

## Sign-In Risk Indicators

| Indicator | Evidence | Analyst Assessment |
| --- | --- | --- |
| Impossible travel-style pattern | Florida success followed minutes later by international attempts | Suspicious; requires user validation |
| Repeated failed sign-ins | Multiple invalid password attempts from same IP | Consistent with password spraying or credential guessing |
| Successful password step | Password accepted from unfamiliar geography | Treat as possible credential exposure |
| MFA prompt behavior | Two prompts generated; one denied | Possible MFA request generation after valid password entry |
| Unfamiliar device/browser | Unknown Windows device and Chrome version outside baseline | Suspicious without user confirmation |
| Conditional access block | Access blocked after MFA failure and risk evaluation | Control reduced impact but did not remove credential concern |
| Related user failures | Two other finance users received failures from same IP | Supports broader password attack context |

## MFA and Conditional Access Review

The MFA result matters because the attacker did not gain a completed session, but the password step appears to have succeeded once. That means the analyst should not close the case only because access was blocked.

Simulated policy result:

| Policy | State | Result | Notes |
| --- | --- | --- | --- |
| Require MFA for external sign-ins | Enabled | Applied | MFA challenge triggered |
| Block high-risk sign-ins | Enabled | Applied | Blocked after risk evaluation and MFA failure |
| Require compliant device for finance app access | Enabled | Not satisfied | Device was unknown/unmanaged |
| Legacy authentication block | Enabled | Not applicable | Events used modern browser client |
| Trusted location bypass | Enabled | Not applied | Source locations were not trusted |

Analyst conclusion: Conditional access worked as a control, but the activity still requires account containment because the password was accepted and MFA prompts were generated from an unfamiliar location.

## IP / Location / Device Observations

- Normal sign-in used a managed Windows 11 device from a Florida source.
- Failed attempts came from a documentation-safe IP labeled as Lagos, Nigeria.
- The password-accepted event came from a documentation-safe IP labeled as Amsterdam, Netherlands.
- The same unfamiliar Chrome user agent appeared across suspicious attempts.
- The source pattern is not enough to identify an actor, but it is enough to escalate as suspicious.
- No real attribution, geolocation certainty, legal conclusion, or victim identification is claimed.

## Detection Logic

Example detection logic for SOC documentation:

```text
Alert when all conditions are true:
- User has 3 or more failed sign-ins within 15 minutes from an unfamiliar IP or country.
- A password-accepted event or MFA challenge follows the failures.
- Source location differs from the user's normal location or creates impossible travel-style timing.
- Device is unknown, unmanaged, or not seen in the user's recent sign-in baseline.

Increase severity when:
- MFA prompts are generated repeatedly.
- Conditional access blocks a high-risk sign-in.
- Similar failures target multiple users in the same department.
- The account has sensitive business access or privileged roles.
```

Example KQL-style pseudocode:

```kql
SigninLogs
| where TimeGenerated > ago(24h)
| where UserPrincipalName == "maria.ellis@contoso-lab.example"
| summarize
    FailedAttempts=countif(ResultType != 0),
    SuccessfulPasswordSteps=countif(ResultType == 0 or Status has "MFA required"),
    Countries=make_set(Location),
    IPs=make_set(IPAddress),
    Devices=make_set(DeviceDetail)
  by UserPrincipalName, bin(TimeGenerated, 15m)
| where FailedAttempts >= 3 and array_length(Countries) >= 2
```

This logic is illustrative and would require testing, tuning, and owner approval before production use.

## MITRE ATT&CK Mapping

| Technique | Relevance |
| --- | --- |
| `T1110.003 - Password Spraying` | Multiple failed sign-ins against one user, plus related failures against two finance users, support a password attack hypothesis. |
| `T1078 - Valid Accounts` | A password step appears to succeed from an unfamiliar location, creating concern that valid credentials were known or guessed. |
| `T1621 - Multi-Factor Authentication Request Generation` | MFA prompts were generated after a suspicious password step; one prompt was denied by the user. |

`T1098 - Account Manipulation` is not mapped because the simulated evidence does not show mailbox rule changes, group changes, MFA method changes, role assignment changes, or account setting modification.

## Analyst Decision

**Decision:** Escalate as suspected credential exposure with blocked access, not confirmed account takeover.

The evidence supports containment because the password step succeeded from an unfamiliar international location and MFA prompts were generated. Conditional access blocked the sign-in, and no completed suspicious session was confirmed. The safest analyst recommendation is to reset the password, revoke sessions, require MFA re-registration, review recent application activity, and monitor related finance accounts.

## Escalation Criteria

Escalate to identity/security operations if any of the following are present:

- Successful password authentication from unfamiliar location or device
- MFA prompt denied by user after suspicious sign-in
- Conditional access high-risk block
- Similar attempts against multiple users
- Access to sensitive applications such as finance, payroll, HR, or privileged admin portals
- New inbox rules, forwarding, OAuth grants, MFA method changes, group changes, or role changes
- User denies travel or sign-in attempt

## Containment Recommendations

Recommended actions for authorized identity administrators:

1. Reset the user's password.
2. Revoke active sessions and refresh tokens.
3. Require MFA re-registration after user validation.
4. Confirm the user's registered authentication methods.
5. Review recent mailbox, SharePoint, Teams, and finance app activity.
6. Search for similar sign-in patterns across finance users.
7. Keep the account under heightened monitoring for 24 to 72 hours.

These are recommendations only. Production account actions require approved procedures and authorized personnel.

## Defensive Recommendations

- Strengthen Identity Protection response policies for high-risk sign-ins.
- Alert on repeated MFA prompts after unfamiliar sign-ins.
- Correlate failed sign-ins across users to detect password spraying.
- Monitor successful password steps followed by MFA denial or timeout.
- Require compliant devices or stronger authentication for sensitive applications.
- Review MFA methods for unusual additions or weak recovery paths.
- Tune conditional access policies using report-only testing before enforcement changes.
- Maintain identity incident response runbooks for password reset, session revocation, and user validation.

## Executive Summary

A simulated risky sign-in alert was reviewed for a fictional finance user. The evidence showed repeated failed sign-ins, a successful password step from an unfamiliar international location, MFA prompts, an MFA denial, and conditional access blocks. The activity created an impossible travel-style pattern when compared with the user's normal Florida sign-in minutes earlier.

The analyst decision is to escalate as suspected credential exposure with blocked access. The evidence does not prove completed account compromise, but it is strong enough to recommend password reset, session revocation, MFA re-registration, application activity review, and short-term monitoring.

## Interview Story Version

I investigated a simulated Microsoft Entra ID risky sign-in for a finance user. I reviewed Azure sign-in logs, Identity Protection-style risk signals, MFA results, conditional access outcomes, location changes, device details, and related failed sign-ins against other users. The key point was separating "access blocked" from "no risk." Conditional access stopped the suspicious session, but the password step appeared to succeed and MFA prompts were generated from an unfamiliar international location. I recommended password reset, session revocation, MFA re-registration, follow-on activity review, and monitoring while keeping the case clearly lab-based and evidence-bound.

## Evidence Boundary / Lab Disclaimer

This is a simulated portfolio case study. It uses fictional users, fictional tenant context, documentation-safe IP ranges, and realistic but simulated Microsoft Entra ID / Azure sign-in log evidence.

This case does not claim production SOC employment, real Microsoft tenant access, customer data access, employer investigation work, legal or compliance authority, incident ownership, or completed production remediation.
