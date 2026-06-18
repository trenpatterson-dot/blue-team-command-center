# AI Assistant Risk Matrix

## Scoring Method

This simulated risk matrix uses a simple SOC review model:

- **Likelihood:** Low, Medium, High
- **Impact:** Low, Medium, High
- **Risk:** Low, Medium, High, Critical

Risk is based on plausible abuse before production controls are finalized. It is not evidence of exploitation.

## Risk Summary

| ID | Risk | Likelihood | Impact | Rating | Recommended Owner |
| --- | --- | --- | --- | --- | --- |
| `AI-RISK-001` | Prompt injection changes assistant behavior or suppresses escalation | High | High | Critical | SOC engineering / AI platform owner |
| `AI-RISK-002` | Sensitive alert, identity, or incident data appears in unsafe output | Medium | High | High | Security / privacy / data protection |
| `AI-RISK-003` | Tool access allows unauthorized case update or workflow action | Medium | High | High | SOC platform owner |
| `AI-RISK-004` | Service identity can retrieve more documentation or cases than required | Medium | High | High | Identity and access owner |
| `AI-RISK-005` | Analyst accepts unsupported AI summary as verified incident fact | High | Medium | High | SOC manager |
| `AI-RISK-006` | Audit logs lack prompt, tool, source, denial, and approval detail | Medium | Medium | Medium | Detection engineering / compliance |
| `AI-RISK-007` | Knowledge-base poisoning influences assistant guidance | Medium | Medium | Medium | Documentation owner / SOC engineering |
| `AI-RISK-008` | Prompt and response retention conflicts with data handling requirements | Medium | Medium | Medium | Legal / privacy / governance |
| `AI-RISK-009` | Model or tool change bypasses prior security testing | Medium | High | High | AI governance owner |
| `AI-RISK-010` | Users paste secrets or private data into prompts | Medium | High | High | Security awareness / data protection |

## Prioritized Findings

### Critical

| ID | Finding | Why It Matters | Required Control |
| --- | --- | --- | --- |
| `AI-RISK-001` | Prompt injection can manipulate summaries or recommended response steps | SOC alerts and retrieved documents may contain attacker-controlled text | Injection-resistant prompt design, untrusted-content labeling, testing, and logging |

### High

| ID | Finding | Why It Matters | Required Control |
| --- | --- | --- | --- |
| `AI-RISK-002` | Sensitive data can leak through summaries, reports, or conversation history | SOC data may include secrets, identities, IPs, hostnames, and investigation details | Redaction, DLP review, least-privilege access, retention limits |
| `AI-RISK-003` | Tool misuse can change cases or workflows without proper authority | AI-generated actions could affect incident records or notifications | Read-only defaults, human approval, allowlisted tool calls |
| `AI-RISK-004` | Over-permissioned service identity expands blast radius | A compromised assistant path could retrieve broad SOC or documentation data | Scoped roles, app consent review, access recertification |
| `AI-RISK-005` | Unsupported AI output may become incident fact | Incident reporting depends on evidence quality and analyst judgment | Source citation, confidence language, required analyst review |
| `AI-RISK-009` | Model or tool drift can invalidate prior testing | New tools or model behavior can create new attack paths | Change review, regression testing, approval gate |
| `AI-RISK-010` | User-pasted secrets can enter model or logs | Analysts may paste keys, tokens, or credentials while troubleshooting | Secret detection, user warnings, blocked submission, redacted logging |

### Medium

| ID | Finding | Why It Matters | Required Control |
| --- | --- | --- | --- |
| `AI-RISK-006` | Incomplete logs reduce investigation readiness | Teams need to reconstruct AI decisions and approvals | AI-specific audit schema and monitored log retention |
| `AI-RISK-007` | Untrusted documentation can steer bad guidance | Retrieved content may be stale, ownerless, or maliciously edited | Document ownership, freshness, source ranking, retrieval boundaries |
| `AI-RISK-008` | Retention gaps create legal, privacy, and operational risk | Prompt logs may contain sensitive security or personal data | Retention policy, access controls, purge workflow |

## Deployment Readiness Gates

| Gate | Required Before Production |
| --- | --- |
| Prompt injection testing | Completed against alert text, documents, URLs, command lines, and user prompts |
| Data protection review | Redaction, retention, access, and DLP expectations documented |
| Tool permission review | Read/write separation, allowlist, parameter validation, and approval gates confirmed |
| Identity review | Service identity, app registration, consent grants, and role scope approved |
| Audit logging | Prompt, response metadata, tool call, denial, approval, and source-reference logging enabled |
| Human approval workflow | Official incident updates, notifications, containment, and account actions require named approval |
| Governance ownership | Owners assigned for security, privacy, platform, model changes, and exception review |

## Risk Acceptance Boundary

The analyst can recommend control requirements and identify unresolved risk. Production acceptance must come from authorized business, security, legal, privacy, and platform owners after testing and documented approval.
