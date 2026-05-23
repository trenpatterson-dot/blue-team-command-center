# Lessons Learned

This report captures what was learned from the failed login practice case.

This is a personal lab/practice case. No real company, customer, or restricted data is included.

## Report Details

**Case Title:** Failed Login Practice Case  
**Date Prepared:** 2026-05-23  
**Prepared By:** Tren Patterson  
**Status:** Draft  
**Operating Mode:** Personal Lab  

## Plain-English Summary

This practice case was used to test the Blue Team Command Center workflow for a repeated failed login investigation. The case helped validate the structure for documenting known facts, assumptions, missing information, indicators, findings, analyst reporting, executive reporting, and safe next steps.

The main lesson is that failed login activity should not be treated as automatically malicious. Context matters. The analyst needs timestamps, failed login count, source context, account sensitivity, and successful-login follow-up before making a final call.

## What Happened

- A reusable case template was copied into a new failed login practice case.
- The case was documented in Personal Lab Mode.
- A failed login scenario was written using demo-only details.
- Known facts, assumptions, and missing information were separated.
- Timeline, indicators, findings, analyst summary, and executive summary were drafted.
- No real company or customer data was used.
- No operational response action was taken.

## What Went Well

- The reusable case template copied cleanly.
- The folder structure supported a complete investigation flow.
- The case separated facts, assumptions, and missing information.
- The reports supported both analyst-level and manager-level audiences.
- Human approval requirements were included throughout the case.
- The workflow stayed safe and did not imply unapproved action.

## What Slowed the Investigation Down

- The case used placeholder evidence instead of real lab logs.
- Exact timestamps were not available.
- The failed login count was not documented.
- Source context was not available.
- Successful login follow-up could not be confirmed.
- Account privilege level was unknown.

## Evidence Gaps

Evidence that would make the investigation stronger:

- Exact failed login timestamps
- Failed login count
- Source IP or source host context
- Target account details
- Successful login activity after the failures
- Related failed login activity across other accounts
- Event ID details
- Authentication log screenshots from a sanitized lab environment

## Detection Gaps

Possible detection improvements:

- Alert should show failed login count.
- Alert should show timestamp range.
- Alert should identify whether a successful login followed the failures.
- Alert should identify whether the target account is privileged.
- Alert should include source context.
- Alert should show whether multiple accounts were targeted.

## Process Gaps

Possible process improvements:

- Add a failed-login triage checklist.
- Add a required successful-login follow-up step.
- Add clear escalation criteria for repeated failed logins.
- Add guidance for separating benign login failures from brute-force patterns.
- Add guidance for documenting when evidence is missing.

## Recommended Improvements

| Priority | Improvement | Reason | Owner / Team | Approval Needed? |
|---|---|---|---|---|
| High | Add exact failed login count to future cases | Helps determine severity | Analyst | No |
| High | Add successful-login follow-up to failed login workflow | Helps identify possible compromise | Analyst | No |
| Medium | Add source context review | Helps separate expected from suspicious activity | Analyst | No |
| Medium | Add account sensitivity review | Privileged accounts increase risk | Analyst | No |
| Low | Build a completed sample with real lab screenshots later | Strengthens portfolio evidence | Analyst | No |

## Playbook Updates Needed

- [x] Failed login investigation
- [ ] Phishing email triage
- [ ] Suspicious PowerShell
- [ ] Malware alert triage
- [ ] Vulnerability finding
- [ ] Account compromise
- [ ] Impossible travel
- [ ] Endpoint alert triage
- [ ] Other

Notes:

- The failed login playbook should require review of failed login count, timestamp range, source context, account sensitivity, and successful login activity after failures.
- The playbook should clearly say that blocking, disabling, resetting, or escalation requires approval.

## Training / Knowledge Notes

Practice next:

- Windows Event ID 4625 review
- Successful login follow-up after failed login bursts
- Brute-force versus password-spray differences
- Source IP/context review
- Writing short executive summaries from technical findings

## Human Approval Reminder

Any operational changes still require approval, including:

- Blocking IPs or domains
- Disabling accounts
- Resetting passwords
- Deleting or quarantining files
- Isolating endpoints
- Contacting users or customers
- Escalating to leadership
- Closing incidents
- Publishing reports
- Sending external messages

## Final Lessons Learned Statement

The failed login practice case confirmed that the Blue Team Command Center workflow can support a clean SOC-style investigation from intake to reporting. The next improvement is to test the same workflow with sanitized lab evidence so the case includes real timestamps, event details, and screenshots without exposing sensitive data.

## Sanitization Reminder

This case uses demo-only information. Before using this format for public, portfolio, or company-safe sharing, remove or generalize any real company names, usernames, emails, hostnames, IP addresses, ticket IDs, customer information, internal screenshots, tool-specific internal details, or private notes.