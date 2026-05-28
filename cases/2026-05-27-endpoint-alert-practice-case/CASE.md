# Endpoint Alert Practice Case

## Case Overview

**Case Title:** Endpoint Alert Practice Case
**Case ID / Ticket Reference:** Practice Case
**Date Opened:** 2026-05-27
**Date Closed:**
**Analyst:** Tren Patterson
**Team / Queue:** Blue Team Command Center Practice
**Status:** Practice / Lab / Simulated
**Severity:** Medium
**Operating Mode:** Personal Lab

## Alert / Source Information

**Alert Name:** Suspicious Process Activity
**Source System:** Practice EDR Alert
**Detection Tool:** Blue Team Command Center Practice Case
**Alert Time:** 2026-05-27 11:12 local
**Reviewed Time:** 2026-05-27 11:35 local
**Timezone:** Local
**Related Playbook:** `../../playbooks/endpoint-alert-triage.md`
**Related Checklist:** `../../checklists/endpoint-alert-triage-checklist.md`

## Impacted Entities

Only fictional lab details and documentation-safe values are used in this practice case.

**User / Account:** lab.user27
**Host / Device:** LAB-WKS-027
**IP Address:** 198.51.100.27
**Domain / URL:** `updates.example`
**File / Hash:** `temp-helper.dat` / `FAKE-SHA256-DO-NOT-USE-AS-IOC-0027`
**Application / Service:** Endpoint protection / workstation process activity
**Business Unit / Owner:** Lab / practice environment

## Initial Summary

A practice endpoint alert reported that a script interpreter launched from an unusual parent process and attempted to write a file into a temporary directory. Endpoint protection reported detection-only status, so analyst review is required before any containment or endpoint action.

No malware was executed by the analyst. No containment, endpoint isolation, process termination, file deletion/quarantine, account action, user contact, external message, escalation, incident closure, or report publishing occurs without human approval.

## Known Facts

- This is a practice, lab, and simulated endpoint alert case.
- The alert reported suspicious process activity on LAB-WKS-027.
- The alert reported a script interpreter launched from an unusual parent process.
- The alert reported attempted file write activity into a temporary directory.
- Endpoint protection status is detection-only.
- The user, host, file, hash, IP address, domain, and process values are fictional or documentation-safe examples.
- No real company, customer, user, host, IP, ticket, internal system, malware sample, raw log, screenshot, packet capture, binary, export, scan result, or private evidence is included.
- No malware was executed by the analyst.
- No operational response action has been taken.

## Analyst Interpretation

- A script interpreter launched from an unusual parent process can indicate suspicious execution or misuse of a legitimate tool.
- Attempted temporary directory file write activity increases concern because temporary paths are common staging locations.
- Detection-only status means endpoint protection did not confirm containment, cleanup, quarantine, or prevention.
- The alert is not confirmed malicious because the full process tree, file details, user context, network activity, and related alerts are incomplete.
- Because suspicious process context and detection-only status require review, the analyst decision is to escalate for investigation.

## Assumptions

- The endpoint alert is simulated.
- LAB-WKS-027 is a fictional lab workstation.
- 198.51.100.27 is used as a documentation-safe example IP address.
- `updates.example` is a documentation-safe example domain.
- The process, file, hash, and alert names are fictional practice values.
- No real endpoint telemetry has been copied into this case folder.
- Human approval would be required before any containment, endpoint, account, communication, escalation, closure, or publishing action in a real environment.

## Missing Information

- Complete process tree.
- Exact command line.
- Parent process reason and launch source.
- Whether the file write succeeded.
- File signer or publisher.
- File reputation from approved sources.
- Whether persistence was created.
- Whether the user or admin team recognizes the activity, if contact is approved.
- Whether any network connection succeeded.
- Whether similar alerts exist on other hosts.

## Evidence Collected

| Evidence Type | Location / Reference | Notes |
|---|---|---|
| Alert | `analysis/timeline.md` | Simulated alert summary only |
| Process Context | `analysis/findings.md` | Practice process review notes |
| File / Hash | `analysis/indicators.md` | Fake hash label, not a real incident hash |
| Network Context | `analysis/indicators.md` | Reserved example IP and documentation-safe domain only |
| Checklist | `../../checklists/endpoint-alert-triage-checklist.md` | Required endpoint alert review steps |
| Playbook | `../../playbooks/endpoint-alert-triage.md` | Analyst-led endpoint alert triage guidance |

Do not place restricted evidence in this folder unless policy allows it.

## Public / Private Evidence Boundary

- This case is safe for practice because it uses fictional and documentation-safe values only.
- Real logs, EDR exports, screenshots, binaries, packet captures, malware samples, scan results, hashes, ticket IDs, usernames, hostnames, IP addresses, domains, or internal system names must stay in approved company systems.
- Screenshots are not included. Any future screenshot must be sanitized and reviewed before use.
- This case should not be treated as evidence of a real incident.

## Human Approval Gates

No operational action is currently performed by this case.

Human approval is required before:

- [ ] Containment action
- [ ] Endpoint isolation
- [ ] Process termination
- [ ] File deletion or quarantine
- [ ] Account disablement
- [ ] Password reset
- [ ] Indicator blocking
- [ ] Sensitive evidence collection
- [ ] User contact
- [ ] Escalation to another team or leadership
- [ ] Incident closure
- [ ] Report publishing
- [ ] External communication

## Analyst Decision

**Decision:** Escalate for investigation.

**Reason:** Suspicious process context and detection-only endpoint protection status require review before determining whether the activity is benign, suspicious, or confirmed malicious.

## Timeline Reference

Use:

```text
analysis/timeline.md
```
