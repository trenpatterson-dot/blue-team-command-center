# Suspicious PowerShell Practice Case

## Case Overview

**Case Title:** Suspicious PowerShell Practice Case
**Case ID / Ticket Reference:** Practice Case
**Date Opened:** 2026-05-25
**Date Closed:**
**Analyst:** Tren Patterson
**Team / Queue:** Blue Team Command Center Practice
**Status:** Active
**Severity:** Medium
**Operating Mode:** Personal Lab

## Alert / Source Information

**Alert Name:** Suspicious PowerShell Activity
**Source System:** Practice EDR / Windows Security Logs
**Detection Tool:** Blue Team Command Center Practice Case
**Alert Time:** TBD
**Reviewed Time:** TBD
**Timezone:** Local
**Related Playbook:** `playbooks/suspicious-powershell.md`
**Related Checklist:** `checklists/suspicious-powershell-triage-checklist.md`

## Impacted Entities

Only demo/lab details are used in this practice case.

**User / Account:** Demo user account
**Host / Device:** Demo Windows host
**IP Address:** Demo network destination, if applicable
**Domain / URL:** Demo remote URL, if applicable
**File / Hash:** Demo script or downloaded file, if applicable
**Application / Service:** PowerShell
**Business Unit / Owner:** Lab / practice environment

## Initial Summary

This practice case reviews suspicious PowerShell activity using a SOC-style endpoint triage workflow. The goal is to document the command line, parent process, user context, host context, network activity, file activity, known facts, assumptions, missing information, and safe next steps.

## Known Facts

- Suspicious PowerShell activity was selected for review.
- The case involves endpoint or command-line activity.
- The investigation is being documented as a personal lab/practice case.
- No real company, customer, or sensitive data is being used.
- No endpoint isolation, process termination, file deletion, blocking, or account action has been taken.

## Analyst Interpretation

- PowerShell activity may be benign administrative work, expected automation, endpoint management, or suspicious script execution depending on evidence.
- Parent process, command line, encoded or obfuscated content, network activity, and file activity are key review points.
- The case should not be classified as malicious until supporting evidence is documented.

## Assumptions

- The PowerShell details are demo placeholders.
- The user, host, command line, and network details are not real company data.
- The suspicious PowerShell scenario is being used for SOC workflow practice.

## Missing Information

- Full command line
- Parent process
- User context
- Host context
- PowerShell execution details
- Network connections
- Files created, modified, or downloaded
- Related endpoint alerts
- Whether the activity was expected administration or automation

## Evidence Collected

| Evidence Type | Location / Reference | Notes |
|---|---|---|
| Alert | TBD | Practice PowerShell alert summary |
| Command Line | TBD | Full command line pending |
| Process Tree | TBD | Parent/child process review pending |
| Network | TBD | Network activity pending if applicable |
| File Activity | TBD | File activity pending if applicable |
| Other | `analysis/timeline.md` | Timeline will be built during analysis |

Do not place restricted evidence in this folder unless policy allows it.

## Timeline Reference

Use:

```text
analysis/timeline.md
```
