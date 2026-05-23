# Indicators

Use this file to document indicators reviewed during the failed login practice case.

This is a personal lab/practice case. No real company, customer, or restricted data is included.

## Indicator Summary

**Case Title:** Failed Login Practice Case  
**Date Reviewed:** 2026-05-23  
**Analyst:** Tren Patterson  
**Operating Mode:** Personal Lab  

## Indicator Table

| Indicator | Type | Source | Context | Status | Notes |
|---|---|---|---|---|---|
| Demo user account | User / Account | Practice SIEM / Windows Security Logs | Target account for failed login review | Unknown | Needs review for successful logins and normal behavior |
| Demo Windows host | Hostname | Practice SIEM / Windows Security Logs | Target system for authentication activity | Unknown | Needs asset/user context |
| Demo source address | IP Address | Practice SIEM / Windows Security Logs | Source of failed login attempts | Unknown | Needs validation against expected sources |
| Windows authentication | Application / Service | Windows Security Logs | Authentication service involved in failed login activity | Known | Related to failed login investigation |
| Failed login event | Event Type | Windows Security Logs | Authentication failure evidence | Known | Event details should be reviewed if available |

## Known Good / Expected Indicators

- Windows authentication activity can be normal depending on user behavior, saved credentials, services, or scheduled tasks.
- A small number of failed login attempts may be benign.
- More context is needed before determining whether the source is suspicious.

## Suspicious Indicators

- Repeated failed login attempts against the same account may require review.
- Failed logins followed by a successful login may require deeper investigation.
- Failed logins from an unusual source may increase concern.
- Failed logins against privileged accounts may increase severity.

## Unknown Indicators

- Exact source IP address or hostname
- Exact number of failed attempts
- Whether the source is expected
- Whether successful login occurred after failures
- Whether the account is privileged
- Whether similar activity affected other accounts

## Indicator Questions

- Is the source expected for this user or host?
- How many failed login attempts occurred?
- Did the attempts happen in a short burst?
- Was there a successful login after the failures?
- Was the target account privileged?
- Did other accounts see similar failed login activity?
- Is there evidence of password spraying or brute force?
- Does the activity require escalation?

## Safe Handling Notes

No real usernames, hostnames, emails, IP addresses, ticket numbers, or company data are included in this practice case.

For a real company case, indicators should stay inside approved company systems unless policy allows documentation elsewhere.

## Recommended Next Steps

| Priority | Recommendation | Reason | Approval Needed? |
|---|---|---|---|
| High | Identify exact failed login count | Needed to understand severity and pattern | No |
| High | Check for successful login after failures | Helps determine possible compromise | No |
| Medium | Review source context | Helps determine whether source is expected | No |
| Medium | Check whether account is privileged | Privileged accounts increase risk | No |
| Low | Document indicator review in analyst summary | Supports clean case reporting | No |

## Closeout Review

Before closing this section, confirm:

- [ ] Indicators are documented clearly.
- [ ] Sensitive indicators are protected.
- [ ] Unknown indicators are marked.
- [ ] Suspicious indicators have recommended next steps.
- [ ] Any blocking or containment action is marked as requiring approval.