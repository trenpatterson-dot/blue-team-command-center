# SOC-024 Executive Summary

## Overview

A simulated Microsoft Entra ID risky sign-in alert was investigated for a fictional finance user. The activity included repeated failed sign-ins, a successful password step from an unfamiliar international location, MFA prompts, user denial of an MFA prompt, and conditional access blocks.

The case demonstrates SOC analyst alert triage for identity security, account compromise indicators, password spraying context, impossible travel-style timing, and practical incident response recommendations.

## Key Findings

| Finding | Business Meaning |
| --- | --- |
| Repeated failed sign-ins occurred from an unfamiliar location | Possible password spraying or credential guessing |
| A password step succeeded from a second unfamiliar location | Possible credential exposure |
| MFA prompts were generated and one was denied | User signal suggests the sign-in was not expected |
| Conditional access blocked the suspicious access | Security controls reduced impact |
| Similar failures appeared against two finance users | The activity may be broader than one account |

## Analyst Decision

Escalate as suspected credential exposure with blocked access.

The evidence does not prove that the account was fully compromised. It does show enough risk to justify containment because the password appears to have worked before MFA and conditional access stopped the session.

## Recommended Response

- Reset the user's password.
- Revoke sessions and refresh tokens.
- Require MFA re-registration after user validation.
- Review recent mailbox, SharePoint, Teams, and finance application activity.
- Search for similar attempts against related users.
- Monitor the account for 24 to 72 hours.
- Review conditional access and Identity Protection response logic.

## Risk Statement

The highest risk is not that access was confirmed. The highest risk is that valid credentials may have been exposed and tested against a sensitive business user. Conditional access reduced the immediate impact, but the account still needs containment and follow-on review.

## Evidence Boundary

This is simulated portfolio work using fictional users, fictional tenant context, and documentation-safe IP ranges. It does not claim real Microsoft tenant access, customer data access, employer SOC work, production remediation, legal authority, or compliance authority.
