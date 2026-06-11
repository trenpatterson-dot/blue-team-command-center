# SOC-018 Investigation Report

## Executive Summary

Microsoft Sentinel generated an alert for suspicious sign-in activity involving repeated failed authentication attempts followed by a successful login. The investigation reviewed authentication activity, user behavior, MFA status, and possible follow-on activity.

The activity was suspicious because repeated failures can indicate credential guessing or brute-force behavior. However, the successful sign-in included MFA completion, and no evidence of privilege escalation, persistence, mailbox abuse, or malicious post-authentication activity was identified.

The case was closed as benign activity with continued monitoring recommended.

## Alert Overview

| Field | Value |
|---|---|
| Alert Name | Suspicious User Sign-In Activity |
| Platform | Microsoft Sentinel |
| Severity | Medium |
| User Account | jdoe@contoso.com |
| Source IP | 203.0.113.45 |
| Detection Time | 2026-06-11 08:14 UTC |
| Authentication Result | Successful after multiple failures |
| MFA Status | Completed |

## Investigation Timeline

| Time UTC | Event | Analyst Notes |
|---|---|---|
| 08:09 | Failed sign-in attempt | First observed failed authentication event |
| 08:10 | Failed sign-in attempt | Repeated failure from same source IP |
| 08:11 | Failed sign-in attempt | Pattern continued |
| 08:12 | Failed sign-in attempt | Multiple failures increased alert confidence |
| 08:14 | Successful authentication | Successful login occurred after repeated failures |
| 08:16 | MFA challenge completed | MFA completion reduced compromise likelihood |
| 08:18 | Mailbox accessed | Normal user activity observed |
| 08:20 | Follow-on activity reviewed | No privilege escalation or suspicious actions identified |

## Evidence Reviewed

### Authentication Activity

Multiple failed sign-in attempts were observed before a successful authentication event. This pattern initially suggested possible credential guessing or brute-force activity.

### MFA Status

The successful login included MFA completion. No MFA bypass indicator was identified during the review.

### User Activity

Post-authentication activity appeared limited to normal mailbox access. No suspicious downloads, forwarding rule changes, administrative actions, or privilege changes were identified.

### Evidence Gaps

This case study does not include real enterprise logs or production tenant access. The investigation uses a simulated Sentinel-style scenario for portfolio development.

## MITRE ATT&CK Mapping

| Technique | Name | Evidence |
|---|---|---|
| T1110 | Brute Force | Multiple failed authentication attempts were observed |
| T1078 | Valid Accounts | A successful login occurred using a valid user account |

## Analyst Assessment

The alert was worth investigating because repeated failed logins followed by a successful sign-in can indicate unauthorized credential access. The strongest risk indicator was the authentication pattern itself.

The strongest mitigating evidence was successful MFA completion and the absence of suspicious follow-on activity. No privilege escalation, persistence, unusual mailbox behavior, or administrative activity was observed.

Based on the available evidence, the activity was suspicious but not confirmed malicious.

## Final Disposition

Benign Activity

## Severity Decision

Final severity was assessed as Low after investigation.

The alert began as Medium because the sign-in pattern was suspicious. Severity was lowered after MFA completion was confirmed and no malicious post-authentication behavior was identified.

## Recommendations

1. Continue monitoring failed sign-in trends for the user account.
2. Maintain MFA enforcement.
3. Review future alerts involving the same account or source IP.
4. Educate users on password hygiene and phishing awareness.
5. Retain the Sentinel detection because the pattern is still useful for identifying credential attack behavior.

## Portfolio Boundary

This is a lab/case study created for portfolio development. It does not represent production SOC employment, unrestricted enterprise access, or authority over real customer systems.
