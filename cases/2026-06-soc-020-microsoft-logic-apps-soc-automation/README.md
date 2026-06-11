# SOC-020: Microsoft Logic Apps SOC Automation

## Case Type

Lab / case study using realistic simulated evidence.

## Recruiter Snapshot

This case demonstrates how a Microsoft security analyst could design a Logic Apps workflow to support Microsoft Sentinel or Defender XDR alert triage. The automation gathers alert context, prepares an evidence checklist, notifies the assigned analyst, and drafts an incident note. It does not make the final incident determination or perform containment.

## Case Files

- [Analyst handoff](HANDOFF.md)
- [ELI10 summary](outputs/eli10.md)
- [Technical summary](outputs/technical.md)
- [Executive summary](outputs/executive-summary.md)
- [LinkedIn draft](outputs/linkedin.md)
- [OneNote notes](outputs/onenote.md)

## Automation Objective

Reduce repetitive alert-handling work while preserving analyst judgment. The proposed SOC automation standardizes initial evidence collection and documentation so the analyst can spend more time validating the alert, assessing risk, and applying escalation criteria.

## Alert Scenario

Microsoft Defender XDR creates a medium-severity alert for suspicious PowerShell download behavior. The alert is available to Microsoft Sentinel for incident handling.

Simulated alert details:

| Field | Simulated Value |
| --- | --- |
| Alert ID | `LAB-ALERT-SOC020-001` |
| Alert title | Suspicious PowerShell Download Behavior |
| Source | Microsoft Defender XDR |
| Incident platform | Microsoft Sentinel |
| Severity | Medium |
| User | `alex.morgan@example.invalid` |
| Host | `LAB-WS-020` |
| Source IP | `198.51.100.24` |
| Timestamp | `2026-06-11T14:22:31Z` |
| Initial MITRE ATT&CK candidate | Command and Scripting Interpreter: PowerShell (`T1059.001`) |

The MITRE ATT&CK mapping is a candidate based on the alert title and must be validated against the underlying evidence by a human analyst.

## Environment Assumptions

- Microsoft Sentinel or Defender XDR can provide an alert or incident trigger.
- A Logic Apps workflow has approved read access to the minimum alert fields required for triage support.
- The lab uses simulated entities and no live customer data.
- Notification targets represent an approved SOC channel or analyst queue.
- The automation can create a draft note but cannot close an incident, change severity, isolate a device, disable an account, or block an indicator.
- Production implementation would require tenant-specific connector review, identity configuration, data handling approval, and testing.

## Manual Analyst Pain Point

Without automation, an analyst may repeatedly copy the same alert fields into a worksheet or incident note, build an evidence checklist from memory, and send a separate notification. This creates avoidable delay and inconsistent documentation during alert triage.

The proposed analyst workflow removes repetitive formatting while keeping investigation and incident response decisions manual.

## Proposed Logic Apps Workflow

1. A Microsoft Sentinel incident or Defender XDR alert is created.
2. Logic Apps receives the alert trigger.
3. The workflow extracts the alert ID, title, severity, timestamp, user, host, source IP, and available evidence links.
4. The workflow normalizes missing fields as `Not provided` rather than guessing.
5. The workflow prepares an evidence collection checklist.
6. The workflow sends an analyst notification with a link or reference to the source alert.
7. The workflow creates a draft incident note labeled `DRAFT - ANALYST REVIEW REQUIRED`.
8. A human analyst reviews the source evidence and validates any MITRE ATT&CK mapping.
9. The analyst decides whether to close, escalate, or request approved containment.

### Workflow Diagram

```text
Sentinel / Defender XDR alert
            |
            v
      Logic Apps trigger
            |
            v
  Extract and normalize fields
            |
            +----> Prepare evidence checklist
            |
            +----> Notify assigned analyst
            |
            +----> Create draft incident note
            |
            v
     HUMAN APPROVAL CHECKPOINT
            |
            +----> Close as benign / false positive
            +----> Escalate for deeper investigation
            +----> Request authorized containment
```

## Trigger Condition

The workflow starts when an approved connector receives a new Sentinel incident or Defender XDR alert that meets defined routing conditions.

Example routing logic:

```text
IF alert.status == "New"
AND alert.severity IN ["Medium", "High"]
AND alert.product IN ["Microsoft Sentinel", "Microsoft Defender XDR"]
THEN start triage-support workflow
ELSE leave the alert in the standard analyst queue
```

This trigger controls workflow routing only. It does not determine whether the alert is malicious.

## Inputs and Outputs

### Inputs

- Alert or incident ID
- Alert title
- Severity
- Creation timestamp
- Product source
- User entity
- Host or device entity
- Source IP address
- Available alert description
- Source evidence link or incident reference

### Outputs

- Normalized alert context record
- Evidence checklist
- Analyst notification
- Draft incident note
- Workflow status record
- Failure or missing-data notice when applicable

## Example Pseudo-JSON

```json
{
  "workflow": "SOC-020-triage-support",
  "case_type": "lab_case_study",
  "source": "Microsoft Defender XDR",
  "incident_platform": "Microsoft Sentinel",
  "alert": {
    "id": "LAB-ALERT-SOC020-001",
    "title": "Suspicious PowerShell Download Behavior",
    "severity": "Medium",
    "timestamp_utc": "2026-06-11T14:22:31Z"
  },
  "entities": {
    "user": "alex.morgan@example.invalid",
    "host": "LAB-WS-020",
    "source_ip": "198.51.100.24"
  },
  "candidate_attack_mapping": {
    "technique": "T1059.001",
    "status": "analyst_validation_required"
  },
  "automation_actions": [
    "prepare_evidence_checklist",
    "notify_analyst",
    "draft_incident_note"
  ],
  "prohibited_automatic_actions": [
    "close_incident",
    "change_final_severity",
    "isolate_device",
    "disable_account",
    "block_indicator"
  ],
  "decision_status": "pending_human_approval"
}
```

## Evidence Gathered

The automation should gather only fields made available through approved connectors and permissions:

- Alert ID, title, source product, severity, and timestamp
- User, host, and IP entities included with the alert
- Alert description and detection source
- Links or references to the original Sentinel incident or Defender XDR alert
- Available process, command-line, sign-in, or device context references
- Existing owner, status, tags, and comments when access is approved

The workflow records missing fields explicitly. It does not manufacture evidence or infer facts that are not present.

### Prepared Evidence Checklist

- [ ] Confirm the alert exists in the source system.
- [ ] Validate the affected user and host.
- [ ] Review the source IP and available reputation context.
- [ ] Review process, command-line, device, or sign-in evidence relevant to the alert.
- [ ] Build a timeline from source telemetry.
- [ ] Check for related alerts or incidents.
- [ ] Validate the candidate MITRE ATT&CK mapping.
- [ ] Identify evidence gaps and conflicting indicators.
- [ ] Apply documented escalation criteria.
- [ ] Record the analyst's final decision and rationale.

## Human Approval Checkpoint

The workflow stops after preparing the analyst package. The analyst must review the original evidence before any final disposition or response recommendation is accepted.

Human approval is required for:

- Determining true positive, benign positive, false positive, or inconclusive
- Assigning final severity and confidence
- Confirming MITRE ATT&CK mapping
- Escalating to incident response or another team
- Requesting device isolation, account action, indicator blocking, or other containment
- Closing the alert or incident

## Notification / Escalation Path

The notification should contain:

- Alert title, source, severity, and timestamp
- User, host, and source IP when present
- Source alert or incident reference
- Missing critical fields
- Evidence checklist location
- Clear label: `Analyst review required`

Example routing:

| Condition | Automation Result | Human Action |
| --- | --- | --- |
| Medium severity with complete core fields | Notify assigned analyst queue | Review during normal triage |
| High severity or privileged account entity | Notify analyst and designated escalation channel | Validate urgency and apply escalation criteria |
| Missing alert ID, source link, or entity context | Send incomplete-data warning | Retrieve evidence manually before disposition |
| Workflow connector failure | Record failure and notify workflow owner | Use the documented manual triage process |

Notification does not equal escalation approval. The analyst or authorized incident owner decides whether escalation is warranted.

## Incident Documentation Draft

```text
DRAFT - ANALYST REVIEW REQUIRED

Alert ID: LAB-ALERT-SOC020-001
Title: Suspicious PowerShell Download Behavior
Source: Microsoft Defender XDR
Incident Platform: Microsoft Sentinel
Severity: Medium (source value; not final analyst severity)
Timestamp: 2026-06-11T14:22:31Z
User: alex.morgan@example.invalid
Host: LAB-WS-020
Source IP: 198.51.100.24

Automation summary:
The triage-support workflow collected the available alert context, prepared an
evidence checklist, and notified the analyst. A candidate MITRE ATT&CK mapping
of T1059.001 was included for validation.

Evidence status:
Source telemetry review is pending. No final determination has been made.

Required analyst action:
Review the original alert and related telemetry, document evidence gaps,
validate or reject the ATT&CK mapping, and decide whether to close, escalate,
or request authorized containment.
```

## Failure Handling

- If the trigger payload is malformed, stop processing and record a workflow error.
- If a required field is missing, use `Not provided` and notify the analyst.
- If enrichment times out, retain the original alert context and mark enrichment as incomplete.
- If notification fails, retry according to an approved limit and route the failure to the workflow owner.
- If draft-note creation fails, preserve the normalized context for manual documentation.
- If duplicate triggers occur, use the alert or incident ID as a correlation key and flag the duplicate.
- If a connector loses authorization, stop dependent actions and use the manual triage fallback.
- Never interpret a failed automation step as evidence that the alert is benign.

## Security and Governance Considerations

- Use managed identity or another approved authentication method in a real deployment.
- Apply least-privilege connector permissions.
- Do not place secrets, API keys, tokens, tenant IDs, or credentials in workflow definitions or case documentation.
- Limit data collection to fields required for alert triage and evidence collection.
- Protect notification destinations from unnecessary exposure of security data.
- Record workflow runs and changes for auditability.
- Use change control, testing, rollback planning, and connector ownership.
- Define retention rules for workflow history and drafted incident notes.
- Require analyst review before operational incident response actions.
- Review automation for prompt injection or untrusted-content risks before adding any AI-assisted step.

## Final Analyst Decision Boundary

Logic Apps supports the analyst workflow; it does not replace the analyst. The workflow may gather, normalize, route, and draft information. It may not make the final incident determination, approve escalation, or execute containment in this case design.

The final analyst decision must be evidence-based and recorded as one of the following:

- Close with documented rationale
- Escalate for deeper investigation
- Request authorized containment
- Keep open as inconclusive while additional evidence is collected

## Evidence Boundary / Lab Disclaimer

This is a lab and case-study portfolio project built with simulated evidence. It does not represent production SOC employment, enterprise authority, tenant ownership, unrestricted Microsoft security product access, or live customer data access. The workflow is a documentation-first design and was not deployed to a production Microsoft tenant.
