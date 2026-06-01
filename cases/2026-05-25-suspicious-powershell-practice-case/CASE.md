# Suspicious PowerShell Practice Case

## Case Overview

**Case Title:** Suspicious PowerShell Practice Case
**Case ID / Ticket Reference:** Practice Case
**Date Opened:** 2026-05-25
**Date Closed:** Not closed - evidence needed before disposition
**Analyst:** Tren Patterson
**Team / Queue:** Blue Team Command Center Practice
**Status:** Portfolio draft / Practice / Lab / Simulated
**Severity:** Medium
**Operating Mode:** Personal Lab

## Alert / Source Information

**Alert Name:** Suspicious PowerShell Activity
**Source System:** Practice EDR / Windows Security Logs
**Detection Tool:** Blue Team Command Center Practice Case
**Alert Time:** Not documented in current practice evidence
**Reviewed Time:** Not documented in current practice evidence
**Timezone:** Local
**Related Playbook:** `../../playbooks/suspicious-powershell.md`
**Related Checklist:** `../../checklists/suspicious-powershell-triage-checklist.md`

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

This practice case documents a SOC-style endpoint triage workflow for suspicious PowerShell activity. It focuses on what an analyst would need to review: command line, parent process, user context, host context, network activity, file activity, related alerts, known facts, assumptions, missing information, and safe next steps.

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
| Alert | Not present | Practice PowerShell alert summary is not included as evidence |
| Command Line | Not present | Full command line is not included as evidence |
| Process Tree | Not present | Parent/child process evidence is not included |
| Network | Not present | Network activity evidence is not included |
| File Activity | Not present | File activity evidence is not included |
| Evidence gap checklist | `EVIDENCE-NEEDED.md` | Documents missing evidence without inventing artifacts |
| Timeline notes | `analysis/timeline.md` | Timeline documents current known gaps |

The evidence folders currently contain placeholder files only. Do not place restricted evidence in this folder unless policy allows it.

## Public / Private Evidence Boundary

- This case is safe for portfolio use only as a simulated, evidence-gap practice case.
- No screenshots, logs, raw notes, command output, process trees, endpoint exports, hashes, or private artifacts are included.
- Real command lines, hostnames, usernames, file paths, URLs, hashes, endpoint telemetry, and screenshots must stay in approved systems unless sanitized and approved for lab use.
- Any future evidence must be sanitized, approved, and reviewed before sharing or publishing.

## Analyst Decision

**Decision:** Continue evidence review / no confirmed malicious execution.

**Reason:** Suspicious PowerShell activity requires command-line, parent process, user, host, network, file, and related-alert context before escalation, closure, or operational response.

## Timeline Reference

Use:

```text
analysis/timeline.md
```
