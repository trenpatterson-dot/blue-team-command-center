# AI Assistant Threat Model

## System Summary

The simulated AI assistant supports SOC analysts by summarizing alerts, drafting incident reports, and retrieving internal security documentation. It may receive alert fields, investigation notes, analyst prompts, retrieved knowledge-base content, and tool outputs. It may call approved tools for documentation lookup, case context retrieval, and draft generation.

The assistant is not authorized to perform containment, change identity permissions, close incidents, notify external parties, or make production decisions without human approval.

## Assets to Protect

| Asset | Why It Matters |
| --- | --- |
| Alert and incident content | May include usernames, hosts, IPs, investigation details, and sensitive security context |
| Security documentation | May reveal detection logic, response procedures, internal architecture, or exception handling |
| Credentials and secrets | Must never be exposed, summarized into unsafe outputs, or stored in prompt history |
| Tool permissions | Could allow unauthorized lookup, ticket changes, or workflow actions if over-scoped |
| Analyst trust | Incorrect or manipulated AI output can shape incident decisions |
| Audit trail | Needed to review AI behavior, approvals, tool use, and policy violations |

## Trust Boundaries

| Boundary | Trusted Side | Untrusted or Lower-Trust Side | Review Need |
| --- | --- | --- | --- |
| Analyst prompt to assistant | Authenticated analyst session | Free-form user input | Validate identity, role, and acceptable use |
| Alert content to model | SOC workflow | External attacker-controlled fields inside alerts | Treat alert text as untrusted content |
| Knowledge retrieval | Approved security documentation | Stale, unowned, or user-edited content | Verify source, owner, freshness, and classification |
| Tool invocation | Assistant runtime policy | Model-generated tool request | Enforce allowlist, scope, and approval gates |
| Output to ticket/report | Draft workspace | Official incident record or external report | Require human review before write or send |
| Audit log store | Security monitoring | Prompt and response data containing sensitive fields | Redact secrets while preserving investigative value |

## Threat Actors

| Actor | Motivation | Example Risk |
| --- | --- | --- |
| External attacker | Hide activity or exfiltrate information through alert text | Inject instructions into logs or filenames |
| Malicious insider | Abuse assistant access or documentation retrieval | Query sensitive procedures outside job need |
| Curious authorized user | Overuse AI beyond approved purpose | Paste secrets or sensitive customer data into prompts |
| Compromised analyst account | Use trusted access path to retrieve or modify SOC data | Call tools through a valid session |
| Misconfigured service identity | Unintended broad access | Retrieve cases, documents, or logs outside scope |

## Primary Abuse Paths

### Prompt Injection

Untrusted alert text, command lines, URLs, document titles, comments, email bodies, or retrieved pages may instruct the assistant to ignore system rules, reveal hidden context, alter severity, skip escalation, or call tools outside the intended workflow.

Required controls:

- Mark retrieved and alert-derived content as untrusted.
- Keep system and developer instructions separate from user and evidence content.
- Instruct the assistant to summarize malicious instructions as evidence, not follow them.
- Add prompt injection test cases before production release.
- Log detected injection attempts for review.

### Sensitive Data Leakage

The assistant may expose credentials, tokens, private identifiers, internal system details, detection logic, or regulated data in summaries, reports, or logs.

Required controls:

- Apply data minimization and redaction before model processing when practical.
- Block secrets, tokens, private keys, passwords, and recovery codes from prompts and outputs.
- Restrict who can access conversation history and audit records.
- Define retention periods for prompts, responses, and tool results.
- Review DLP and sensitivity labeling requirements.

### Tool Abuse

If the assistant can call tools, a manipulated prompt or compromised user session may trigger unauthorized searches, case updates, notifications, or workflow actions.

Required controls:

- Default to read-only tools.
- Separate read tools from write tools.
- Require human approval for ticket updates, notifications, containment, account action, and external communication.
- Enforce tool allowlists, parameter validation, rate limits, and purpose checks.
- Log every tool request, approval, denial, and result.

### Over-Permissioned Access

A service identity or app registration with broad access could retrieve more documentation, incidents, alerts, or user data than the assistant needs.

Required controls:

- Scope the assistant to specific workspaces, indexes, and case fields.
- Use least-privilege roles and managed identities where appropriate.
- Require separate approval for privileged data sources.
- Review service principals, consent grants, secrets, and certificate rotation.
- Revalidate access after new tools or data sources are added.

### Human Approval Failure

SOC workflow pressure may cause users to accept AI output without validating evidence, or the assistant may blur the difference between draft guidance and approved action.

Required controls:

- Label assistant output as draft analysis.
- Require source citations or evidence references for incident claims.
- Add approval checkpoints before official incident updates, escalations, notifications, and containment.
- Preserve analyst identity on approved actions.
- Train analysts to challenge uncertain or unsupported output.

## MITRE ATT&CK Mapping

| Technique | Relevance |
| --- | --- |
| `T1059 - Command and Scripting Interpreter` | Malicious command lines in alerts may include instructions that attempt to manipulate the assistant. |
| `T1078 - Valid Accounts` | A compromised analyst account could use assistant access to retrieve sensitive SOC context. |
| `T1087 - Account Discovery` | Over-broad documentation or case lookup could expose identity information. |
| `T1119 - Automated Collection` | Tool access could collect incident or documentation data at scale if not limited. |
| `T1552 - Unsecured Credentials` | Prompts, documents, or logs may accidentally include secrets that require redaction. |
| `T1562 - Impair Defenses` | Prompt injection could attempt to suppress escalation, logging, or detection guidance. |

These mappings describe plausible abuse paths and control relevance. They do not establish that any technique occurred.

## Control Objectives

1. The assistant must not follow instructions embedded in untrusted evidence.
2. The assistant must not reveal secrets, hidden instructions, or sensitive data beyond the analyst's authorized need.
3. The assistant must not perform write actions without explicit human approval.
4. The assistant must have narrow tool and data access.
5. The assistant must produce auditable decisions, tool calls, approvals, denials, and source references.
6. The organization must define ownership, review cadence, exception handling, and production readiness gates.

## Residual Risk

Even with safeguards, AI output may be incomplete, wrong, overly confident, or influenced by hostile content. Residual risk should be handled through human review, monitored rollout, limited permissions, transparent logging, and recurring governance review.
