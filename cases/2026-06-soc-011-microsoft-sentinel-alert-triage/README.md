# SOC-011 Microsoft Sentinel Alert Triage Case

## Overview
This case documents a simulated Microsoft Sentinel-style alert triage investigation. The scenario focuses on suspicious authentication activity involving repeated failed sign-ins from one unfamiliar external source IP.

The purpose of this case is to demonstrate a SOC analyst workflow: alert review, evidence collection, KQL-style query documentation, MITRE ATT&CK mapping, risk assessment, and response recommendations.

## Objective
The objective is to investigate a medium-severity authentication alert, determine whether the activity appears suspicious, identify the affected user and source indicators, and document recommended response actions.

This case specifically reviews:
- Repeated failed sign-ins
- Affected user account activity
- Suspicious external source IP behavior
- Whether successful authentication occurred after failures
- MITRE ATT&CK mapping and remediation steps

## Tools Used
- Microsoft Sentinel concepts
- KQL-style query documentation
- Simulated Microsoft Entra ID sign-in log evidence
- CSV evidence review
- MITRE ATT&CK mapping
- Blue Team Command Center documentation workflow

## Environment / Lab Setup
This was a simulated Microsoft Sentinel alert triage case. No real Microsoft Sentinel tenant was accessed. The evidence was created to model the type of sign-in log activity a SOC analyst may review in Microsoft Sentinel or Microsoft Entra ID.

Evidence reviewed:
- `evidence/sentinel-alert-summary.md`
- `evidence/signin-log-events.csv`
- `queries/sentinel-failed-signins.kql`
- `notes/investigation-notes.md`

## Investigation Steps
1. Reviewed the Sentinel-style alert summary.
2. Identified the affected user account.
3. Reviewed failed sign-in activity from the suspicious source IP.
4. Checked whether any successful sign-in occurred from the same suspicious source.
5. Compared the activity pattern against brute force and password spraying behavior.
6. Reviewed the KQL-style query used to identify repeated failed sign-ins.
7. Mapped the behavior to MITRE ATT&CK.
8. Documented the security impact and recommended remediation actions.

## Key Findings
- The user `analyst3@contoso.local` had five failed sign-in attempts.
- The suspicious source IP was `203.0.113.45`.
- The failed attempts occurred in a short time window.
- No successful sign-in from `203.0.113.45` was observed in the simulated evidence.
- A later successful sign-in came from `198.51.100.24`, which was treated as an expected source in the simulated data.
- The activity pattern is consistent with password guessing or password spraying behavior.

## Security Impact
Repeated failed sign-ins from an unfamiliar external IP may indicate an attempted credential access attack. Even when no successful login occurs, this activity can show that an account is being targeted.

If the attacker eventually obtains valid credentials, they may be able to access cloud resources, email, business applications, or sensitive data. This makes early detection and triage important, especially when the activity targets user accounts that may have access to internal systems.

## MITRE ATT&CK Mapping
- `T1110 — Brute Force`
- `T1110.003 — Password Spraying`
- `T1078 — Valid Accounts`

## Recommendations
- Confirm whether the source IP `203.0.113.45` is expected or known.
- Review the affected user's recent sign-in history.
- Verify MFA status for `analyst3@contoso.local`.
- Reset the user's password if compromise is suspected.
- Monitor or block the suspicious source IP.
- Create or tune Sentinel detection logic for repeated failed sign-ins.
- Escalate if successful authentication follows repeated failures.
- Document the alert triage decision and any false-positive explanation.

## Portfolio Note
This case demonstrates SOC analyst skills including Microsoft Sentinel alert triage, authentication log review, KQL-style investigation, MITRE ATT&CK mapping, incident documentation, and remediation planning.
