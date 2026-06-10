# SOC-014 Azure Sign-In Risk Review

## Overview
This case documents a simulated Azure / Microsoft Entra ID sign-in risk review. The scenario focuses on suspicious authentication activity involving failed sign-ins from an unfamiliar location, followed by normal activity from an expected source.

The purpose of this case is to demonstrate Azure security and identity investigation skills: sign-in log review, source IP analysis, MFA status review, user risk assessment, Conditional Access recommendations, and incident documentation.

## Objective
The objective is to investigate suspicious Azure sign-in activity, determine whether the activity indicates account risk, identify affected user and source indicators, and recommend response actions.

This case specifically reviews:
- Failed sign-ins from an unfamiliar location
- Successful sign-ins from expected sources
- MFA requirement and result
- User and sign-in risk indicators
- Conditional Access recommendations
- MITRE ATT&CK mapping

## Tools Used
- Microsoft Entra ID concepts
- Azure sign-in log review
- KQL-style query documentation
- Simulated authentication evidence
- CSV evidence review
- MITRE ATT&CK mapping
- Blue Team Command Center documentation workflow

## Environment / Lab Setup
This was a simulated Azure / Microsoft Entra ID sign-in risk review. No real Azure tenant was accessed. The evidence was created to model the type of authentication activity a SOC analyst or IAM analyst may review in Microsoft Entra ID sign-in logs, Sentinel, or identity protection workflows.

Evidence reviewed:
- evidence/azure-signin-risk-summary.md
- evidence/azure-signin-events.csv
- evidence/command-history.md
- queries/azure-risky-signins.kql
- notes/investigation-notes.md

## Investigation Steps
1. Reviewed the Azure sign-in risk summary.
2. Identified the affected user account.
3. Reviewed failed sign-ins from unfamiliar source indicators.
4. Compared suspicious activity against expected successful sign-ins.
5. Reviewed MFA status and Conditional Access behavior.
6. Checked whether the activity suggested account compromise.
7. Mapped the behavior to MITRE ATT&CK.
8. Documented security impact and remediation recommendations.

## Key Findings
- The affected user was analyst3@contoso.local.
- Multiple failed sign-ins came from source IP 203.0.113.88.
- The failed attempts were associated with an unfamiliar location.
- A later successful sign-in came from expected source IP 198.51.100.24.
- MFA was satisfied for the expected successful sign-in.
- No successful sign-in from the suspicious source IP was observed in the simulated evidence.
- The activity is consistent with possible credential stuffing, password guessing, or early-stage account targeting.

## Security Impact
Suspicious sign-ins from unfamiliar locations may indicate attempted credential access. Even when authentication fails, repeated attempts against a valid account can show that the user is being targeted.

If an attacker obtains valid credentials and MFA is weak, bypassed, or not enforced, the attacker may access cloud resources, email, business applications, or sensitive data. This makes sign-in risk review, MFA enforcement, and Conditional Access important controls.

## MITRE ATT&CK Mapping
- T1110 - Brute Force
- T1110.004 - Credential Stuffing
- T1078 - Valid Accounts
- T1087 - Account Discovery

## Recommendations
- Confirm whether source IP 203.0.113.88 is expected or known.
- Review recent sign-in history for analyst3@contoso.local.
- Verify MFA is enabled and enforced for the affected user.
- Reset the user password if compromise is suspected.
- Apply Conditional Access rules for unfamiliar locations or risky sign-ins.
- Monitor for repeated failures across multiple accounts.
- Escalate if successful authentication follows suspicious failures.
- Document approved exceptions and false-positive reasoning.

## Portfolio Note
This case demonstrates SOC and IAM analyst skills including Azure sign-in review, Microsoft Entra ID-style investigation, MFA analysis, Conditional Access recommendations, KQL-style query documentation, MITRE ATT&CK mapping, and incident reporting.
