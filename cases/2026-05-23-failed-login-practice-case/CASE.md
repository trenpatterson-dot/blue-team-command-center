# Failed Login Practice Case

## Case Overview

**Case Title:** Failed Login Practice Case  
**Case ID / Ticket Reference:** Practice Case  
**Date Opened:** 2026-05-23  
**Date Closed:**  
**Analyst:** Tren Patterson  
**Team / Queue:** Blue Team Command Center Practice  
**Status:** Active  
**Severity:** Medium  
**Operating Mode:** Personal Lab  

## Alert / Source Information

**Alert Name:** Repeated Failed Login Activity  
**Source System:** Practice SIEM / Windows Security Logs  
**Detection Tool:** Blue Team Command Center Practice Case  
**Alert Time:** TBD  
**Reviewed Time:** TBD  
**Timezone:** Local  
**Related Playbook:** `playbooks/failed-login-investigation.md`

## Impacted Entities

Only demo/lab details are used in this practice case.

**User / Account:** Demo user account  
**Host / Device:** Demo Windows host  
**IP Address:** Demo source address  
**Domain / URL:** Not applicable  
**File / Hash:** Not applicable  
**Application / Service:** Windows authentication  
**Business Unit / Owner:** Lab / practice environment  

## Initial Summary

This practice case reviews repeated failed login activity against a demo user account. The goal is to document the alert, separate known facts from assumptions, identify missing information, and produce a clean analyst-ready investigation summary.

## Known Facts

- Failed login activity was identified for review.
- The case involves authentication activity.
- The investigation is being documented as a personal lab/practice case.
- No real company, customer, or sensitive data is being used.
- No containment or response action has been taken.

## Analyst Interpretation

- Repeated failed login activity may indicate mistyped credentials, password guessing, stale saved credentials, a misconfigured service, or brute-force activity.
- Additional context is needed before determining whether this activity is malicious.
- Successful login activity after the failures would be important to review.

## Assumptions

- The activity is from a lab or demo environment.
- The affected account and host are not real company assets.
- The failed login pattern is being used for SOC workflow practice.

## Missing Information

- Exact timestamps of failed login events
- Number of failed login attempts
- Source address or source host context
- Whether any successful login occurred after the failures
- Whether the user confirmed the activity
- Whether this behavior is normal for the account or host

## Evidence Collected

| Evidence Type | Location / Reference | Notes |
|---|---|---|
| Alert | TBD | Practice alert summary |
| Log | TBD | Windows authentication event details |
| Screenshot | TBD | Optional sanitized lab screenshot |
| Ticket | Not applicable | Practice case only |
| Other | `analysis/timeline.md` | Timeline will be built during analysis |

Do not place restricted evidence in this folder unless policy allows it.

## Timeline Reference

Use:

```text
analysis/timeline.md

## Recommended Next Steps

| High | Complete failed-login triage checklist | Ensures failed login count, source context, successful login follow-up, and escalation criteria are reviewed | No |

**Related Playbook:** `playbooks/failed-login-investigation.md`

**Related Checklist:** `checklists/failed-login-triage-checklist.md`