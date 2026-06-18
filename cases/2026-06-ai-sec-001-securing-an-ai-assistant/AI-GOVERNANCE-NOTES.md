# AI Governance Notes

## Governance Position

The AI assistant should be treated as a high-impact SOC support tool, not an autonomous incident responder. Its value is in speeding up summarization, drafting, and documentation retrieval while preserving analyst judgment, least privilege, and evidence-based decisions.

## Ownership Model

| Governance Area | Required Owner | Responsibility |
| --- | --- | --- |
| AI security | Security architecture or SOC engineering | Threat model, testing, control requirements |
| SOC operations | SOC manager | Workflow fit, analyst approval process, escalation criteria |
| Identity and access | IAM owner | Service identity, app permissions, role scope, access reviews |
| Data protection | Privacy / data governance | Sensitive data handling, retention, DLP, approved data sources |
| Platform operations | AI platform owner | Model configuration, tool registry, runtime monitoring |
| Documentation | Knowledge-base owner | Source quality, ownership, classification, freshness |
| Risk acceptance | Authorized leadership | Production approval and exception decisions |

## Policy Requirements

- Define acceptable SOC use cases for the assistant.
- Define prohibited uses such as autonomous containment, legal conclusions, final breach declarations, or unsupervised external communication.
- Require analyst review before content becomes an official incident record.
- Require source references for factual incident claims.
- Define prompt, response, and tool-result retention.
- Define who can access AI conversation history and audit logs.
- Define how sensitive data, secrets, regulated data, and customer records are handled.
- Require periodic access reviews for assistant service identities and users.
- Require security review before adding tools, data sources, plugins, or model changes.

## Human Approval Controls

The assistant may:

- Summarize alerts and incidents.
- Draft internal analyst notes.
- Retrieve approved playbooks and documentation.
- Suggest investigation questions.
- Highlight uncertainty and missing evidence.

The assistant must not perform without named human approval:

- Close or reclassify incidents.
- Send notifications to customers, executives, regulators, or external parties.
- Disable accounts, isolate hosts, block indicators, or trigger containment.
- Update official incident records as final.
- Change detection rules, permissions, policies, or playbooks.
- Declare compromise, breach status, legal impact, or compliance status.

## Data Protection Notes

SOC prompts and outputs can include sensitive data even when no customer records are intentionally used. The review should assume prompts may contain:

- Usernames, hostnames, IP addresses, email addresses, and ticket IDs
- Security events, command lines, URLs, file paths, hashes, and process names
- Incident notes, escalation context, and internal playbook steps
- Secrets accidentally pasted during investigation
- Vulnerability, detection, or infrastructure details

Recommended safeguards:

- Detect and block secrets before submission where practical.
- Redact or mask sensitive fields in logs and examples.
- Keep the assistant away from data sources it does not need.
- Limit conversation-history access.
- Use approved retention and purge rules.
- Document what data can be used for training, tuning, evaluation, and monitoring.

## Audit Logging Requirements

The audit trail should capture:

- Timestamp and authenticated user
- Session ID and case or incident reference
- Prompt category and sanitized prompt hash or summary
- Retrieved source document IDs and classifications
- Tool name, parameters, result status, and error state
- Denied tool calls and policy reason
- Human approval identity, timestamp, and approved action
- Assistant response metadata and safety flags
- Prompt injection, secret-detection, or policy-override indicators

Logs should preserve enough detail to investigate behavior without storing exposed secrets unnecessarily.

## Testing Plan

Pre-production testing should include:

1. Prompt injection attempts inside alert titles, descriptions, URLs, command lines, comments, and retrieved documents.
2. Secret leakage tests using fake tokens, passwords, API keys, and recovery codes.
3. Tool abuse tests for denied write actions, broad searches, and invalid parameters.
4. Permission tests using analysts with different roles and data scopes.
5. Approval-flow tests for incident updates, escalation drafts, and containment recommendations.
6. Audit-log tests confirming that prompts, tool calls, denials, approvals, and source references are recorded.
7. Regression tests after model, prompt, tool, role, or data-source changes.

## Metrics for Ongoing Governance

| Metric | Why It Helps |
| --- | --- |
| Prompt injection attempts detected | Shows exposure to hostile or malformed input |
| Denied tool calls | Reveals attempted policy bypass or user confusion |
| Human approval rate for write actions | Confirms approval workflow usage |
| Sensitive-data blocks | Measures data handling risk and training needs |
| Uncited factual claims | Identifies weak evidence discipline |
| High-risk source retrieval | Tracks access to sensitive documentation |
| Model or tool changes reviewed | Confirms change governance |
| Audit log completeness | Supports investigation readiness |

## Governance Determination

The assistant should remain in controlled pilot or pre-production review until ownership, access, data handling, approval gates, audit logging, and recurring test requirements are documented and accepted by authorized owners.
