# Executive Summary

This report provides a manager-friendly summary of the failed login practice case.

This is a personal lab/practice case. No real company, customer, or restricted data is included.

## Report Details

**Case Title:** Failed Login Practice Case  
**Date Prepared:** 2026-05-23  
**Prepared By:** Tren Patterson  
**Status:** Draft  
**Severity:** Medium  
**Operating Mode:** Personal Lab  

## Plain-English Summary

A practice security case was reviewed for repeated failed login activity against a demo user account. The activity was documented using a SOC-style workflow to show what is known, what is still missing, and what should be reviewed next.

At this stage, there is not enough evidence to confirm account compromise. The case remains a medium-risk practice scenario until more details are added, such as failed login count, timing, source context, and whether a successful login occurred after the failures.

## Business Impact

Because this is a practice case, there is no real business impact.

In a real environment, repeated failed login activity could matter because it may indicate:

- A user having trouble signing in
- A device or service using stale saved credentials
- A misconfigured application or scheduled task
- Password guessing or brute-force activity
- Increased risk if the account is privileged
- Increased risk if a successful login follows the failures

## Current Risk Level

- [ ] Low
- [x] Medium
- [ ] High
- [ ] Critical

Explain why:

> The activity is rated medium because repeated failed logins can indicate attempted unauthorized access. However, compromise has not been confirmed, and more evidence is needed before increasing or lowering the risk.

## What We Know

- Failed login activity was selected for review.
- The case involves authentication activity.
- The account, host, and source details are demo placeholders.
- No real company or customer data is included.
- No successful login has been confirmed.
- No response action has been taken.

## What We Do Not Know Yet

- The exact number of failed login attempts
- The exact timestamp range
- Whether the source was expected
- Whether the target account was privileged
- Whether a successful login occurred after the failures
- Whether other accounts were affected

## Recommended Next Steps

| Priority | Recommendation | Reason | Approval Needed? |
|---|---|---|---|
| High | Review failed login count and timing | Determines whether the pattern looks accidental or suspicious | No |
| High | Check for successful login after failures | Helps determine possible account compromise | No |
| Medium | Review source context | Helps confirm whether the activity was expected | No |
| Medium | Check account sensitivity | Privileged accounts increase risk | No |
| Low | Complete lessons learned | Improves future investigation workflow | No |

## Approval Required

No operational response action is currently recommended from this practice case.

The following actions would require approval in a real environment:

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

## Final Executive Statement

Based on the available practice evidence, repeated failed login activity was reviewed and documented. The current risk is medium because failed logins may indicate attempted unauthorized access, but compromise has not been confirmed. Additional evidence would be needed before escalation or closure.

## Sanitization Reminder

This report contains only demo information. Before using this format for public, portfolio, or company-safe sharing, remove or generalize any real usernames, emails, hostnames, IP addresses, ticket IDs, customer information, internal screenshots, tool-specific internal details, or private notes.