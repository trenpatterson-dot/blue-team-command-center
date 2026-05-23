# Findings

Use this file to document the main finding from the failed login practice case.

This is a personal lab/practice case. No real company, customer, or restricted data is included.

## Finding Summary

**Case Title:** Failed Login Practice Case  
**Date Reviewed:** 2026-05-23  
**Analyst:** Tren Patterson  
**Operating Mode:** Personal Lab  
**Finding Status:** Draft  

## Finding Title

Repeated Failed Login Activity Requires Additional Context

## Finding Type

- [x] Authentication activity
- [ ] Phishing
- [ ] Malware
- [ ] Endpoint alert
- [ ] Network activity
- [ ] Suspicious command execution
- [ ] Account compromise
- [ ] Vulnerability
- [ ] Policy violation
- [ ] Detection gap
- [ ] Process gap
- [ ] Other

## Severity

- [ ] Low
- [x] Medium
- [ ] High
- [ ] Critical

## Known Facts

- Failed login activity was identified for review.
- The case involves authentication activity against a demo user account.
- The case is being handled as a personal lab/practice case.
- No real company or customer data is included.
- No successful login activity has been confirmed yet.
- No containment or response action has been taken.

## Evidence Supporting the Finding

| Evidence | Source / Location | What It Shows |
|---|---|---|
| Case summary | `CASE.md` | Failed login activity is the focus of the investigation. |
| Timeline notes | `analysis/timeline.md` | Timeline gaps still need to be filled in. |
| Indicator notes | `analysis/indicators.md` | Source, account, host, and event context still need review. |

## Analyst Interpretation

- Repeated failed login activity may be benign or suspicious depending on context.
- Possible benign causes include mistyped passwords, expired credentials, stale saved credentials, or a misconfigured service.
- Possible suspicious causes include password guessing, brute-force attempts, or password spraying.
- The finding should remain medium severity until additional evidence supports lowering or raising the risk.

## Assumptions

- The activity is from a lab or demo environment.
- The account and host are not real company assets.
- The alert is being used to practice SOC documentation and triage workflow.
- No confirmed compromise has occurred based on the current evidence.

## Missing Information

- Exact failed login count
- Exact timestamps
- Source address or host context
- Whether the source is expected
- Whether successful login activity occurred after the failures
- Whether the account is privileged
- Whether similar activity affected other accounts

## Impact

The potential impact depends on whether the failed login activity led to a successful unauthorized login.

Possible impact includes:

- Account access risk
- Unauthorized authentication attempt
- Possible credential attack activity
- Increased concern if the target account is privileged
- Increased concern if similar activity affects multiple accounts

At this stage, impact is limited because compromise has not been confirmed.

## Likelihood

- [ ] Low
- [x] Medium
- [ ] High

Explain why:

> The activity is suspicious enough to review because repeated failed logins can be related to credential attacks. However, there is not enough evidence yet to confirm malicious activity or compromise.

## Risk Rating

- [ ] Low
- [x] Medium
- [ ] High
- [ ] Critical

Explain why:

> The risk is medium because repeated failed login activity can indicate attempted unauthorized access, but additional evidence is needed before confirming compromise or escalating severity.

## Recommended Action

| Priority | Recommendation | Reason | Approval Needed? |
|---|---|---|---|
| High | Review failed login count and timing | Determines whether the pattern looks accidental or automated | No |
| High | Check for successful login after failures | Helps identify possible compromise | No |
| Medium | Review source context | Determines whether the source is expected or unusual | No |
| Medium | Check whether the account is privileged | Privileged accounts increase risk | No |
| Low | Document lessons learned after closeout | Improves future triage workflow | No |

## Human Approval Required

Mark any action that requires approval.

- [ ] Block IP/domain
- [ ] Disable account
- [ ] Reset password
- [ ] Delete/quarantine file
- [ ] Isolate endpoint
- [ ] Contact user/customer
- [ ] Escalate to leadership
- [ ] Close incident
- [ ] Publish report
- [ ] Send external message

## Detection / Control Notes

Use this section if the finding shows a detection, logging, or process gap.

- Existing detection: Failed login alert or Windows authentication log review
- Gap identified: Exact event details are not yet documented
- Recommended improvement: Capture failed login count, source, target account, timestamp range, and successful login follow-up
- Owner: Analyst / practice workflow
- Follow-up needed: Complete analyst summary and lessons learned

## Framework Mapping

Optional mapping if supported by evidence.

**MITRE ATT&CK:** T1110 - Brute Force, if evidence supports repeated password guessing  
**NIST CSF:** Detect, Respond  
**NIST SP 800-61:** Detection and Analysis  
**CIS Controls:** Account Management, Audit Log Management  
**Other:** Windows authentication monitoring  

## Final Finding Statement

> Based on the available practice evidence, repeated failed login activity was reviewed and documented. Compromise has not been confirmed. Additional context is needed, including failed login count, timestamps, source context, and whether successful login activity occurred after the failures.

## Closeout Review

Before closing this finding, confirm:

- [ ] Facts are separated from assumptions.
- [ ] Evidence supports the finding.
- [ ] Severity is reasonable.
- [ ] Impact is explained.
- [ ] Risk is not overstated.
- [ ] Recommended actions are safe and actionable.
- [ ] Approval-required actions are marked.
- [ ] Sensitive information is protected.