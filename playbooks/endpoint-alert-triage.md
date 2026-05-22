# Endpoint Alert Triage

## Purpose

Triage endpoint security alerts and determine whether they represent expected activity, suspicious behavior, or confirmed incident activity.

## When to Use

- EDR, antivirus, device management, or SIEM flags endpoint activity.
- A host shows suspicious process, file, registry, persistence, or network behavior.
- A user reports unusual device behavior.

## Required Evidence

- Alert ID and detection name.
- Host and user references.
- Process tree and command line details.
- File, hash, registry, network, and timeline data when available.
- EDR action status.

## Triage Questions

- What triggered the alert?
- Was the activity blocked, allowed, quarantined, or only observed?
- Is the parent process expected?
- Are there related alerts on the same host or user?
- Is the host high value, exposed, or business critical?

## Safe Investigation Steps

1. Record the alert details and time window.
2. Review endpoint timeline in approved tools.
3. Identify related process, file, network, and user activity.
4. Compare activity to approved software and admin behavior.
5. Document known facts, interpretation, and missing context.
6. Recommend response actions for authorized approval.

## Escalation Criteria

- Confirmed execution of malicious or suspicious payload.
- Persistence, privilege escalation, credential access, or lateral movement indicators.
- Multiple hosts affected.
- Critical system or privileged user involved.
- Endpoint tool failed to contain or status is unclear.

## Report Output

Use `templates/ALERT-TRIAGE-REPORT.md` or `templates/INCIDENT-REPORT.md`.

## Lessons Learned

- Did endpoint telemetry answer the key questions?
- Should allowlists, detection logic, or response process be updated?
- Was business ownership clear?

