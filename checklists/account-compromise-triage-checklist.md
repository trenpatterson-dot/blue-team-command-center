# Account Compromise Triage Checklist

Use this checklist when reviewing possible account compromise, suspicious login activity, impossible travel, MFA fatigue, unusual mailbox activity, cloud access anomalies, risky sign-in alerts, or suspicious session behavior.

The goal is to determine whether the activity is likely benign, suspicious, confirmed compromise, or needs escalation while keeping the workflow analyst-led and review-only.

## Related Playbook

playbooks/account-compromise.md

## 1. Case Basics

- [ ] Case or ticket created
- [ ] Alert name documented
- [ ] Alert source documented
- [ ] Analyst documented
- [ ] Date and time documented
- [ ] Timezone documented
- [ ] Severity documented
- [ ] Account reference documented, if allowed
- [ ] Related playbook linked

## 2. Required Evidence

- [ ] Account reference
- [ ] Alert name
- [ ] Alert source
- [ ] Alert timestamp
- [ ] Login timestamp range
- [ ] Source IP or approved source reference
- [ ] Location or geo context, if available
- [ ] Device or user agent details
- [ ] Authentication result
- [ ] MFA result
- [ ] Session details
- [ ] Mailbox activity, if applicable
- [ ] Cloud application activity, if applicable
- [ ] Endpoint or device context, if applicable
- [ ] Related identity, email, cloud, endpoint, or network alerts

## 3. Alert / Detection Review

Check for:

- [ ] Detection category reviewed
- [ ] Alert severity reviewed
- [ ] Detection source reviewed
- [ ] Alert timestamp compared with account activity
- [ ] Risky sign-in details reviewed
- [ ] Impossible travel logic reviewed, if applicable
- [ ] MFA fatigue pattern reviewed, if applicable
- [ ] Similar alerts for the same account reviewed
- [ ] Similar alerts across other accounts reviewed
- [ ] False-positive history checked, if available

## 4. Identity / Login Review

- [ ] Successful logins reviewed
- [ ] Failed logins reviewed
- [ ] Login sequence reviewed
- [ ] Source IP or approved source reference reviewed
- [ ] Location context reviewed
- [ ] Device or user agent reviewed
- [ ] New or unusual device reviewed
- [ ] New or unusual application access reviewed
- [ ] Privileged role or sensitive account status checked
- [ ] Service account or automation context checked, if applicable
- [ ] Login activity compared with expected account behavior

## 5. MFA / Authentication Review

- [ ] MFA prompts reviewed
- [ ] MFA approval or denial events reviewed
- [ ] Repeated MFA prompts checked
- [ ] MFA method reviewed
- [ ] New MFA method registration checked
- [ ] MFA reset or change events checked
- [ ] Password change or reset events checked
- [ ] Authentication bypass or policy exception checked, if available
- [ ] Session token or refresh token activity reviewed, if available
- [ ] No MFA reset performed without approval
- [ ] No password reset performed without approval
- [ ] No session revocation performed without approval

## 6. Email / Cloud Activity Review

- [ ] Mailbox rules reviewed, if applicable
- [ ] Forwarding settings reviewed, if applicable
- [ ] Unusual sent mail reviewed, if applicable
- [ ] Suspicious inbox or deletion activity reviewed, if applicable
- [ ] Cloud application access reviewed
- [ ] File access or sharing activity reviewed, if available
- [ ] OAuth consent or application grants reviewed, if available
- [ ] Privilege or group changes reviewed, if available
- [ ] Data access or download activity reviewed, if available
- [ ] No mailbox, cloud, or permission changes made without approval

## 7. Endpoint / Device Context

- [ ] Device identity reviewed
- [ ] Device compliance or management state reviewed, if available
- [ ] Known device status checked
- [ ] Endpoint alerts reviewed
- [ ] Recent malware or suspicious process alerts reviewed
- [ ] VPN or remote access context reviewed, if applicable
- [ ] Browser or user agent context reviewed, if available
- [ ] Shared device or kiosk possibility considered
- [ ] No endpoint action performed without approval

## 8. Network / Location Context

- [ ] Source IP or approved source reference reviewed
- [ ] Location or geo context reviewed
- [ ] ASN, ISP, VPN, proxy, or hosting provider context reviewed, if available
- [ ] Impossible travel timing reviewed, if applicable
- [ ] Expected travel or remote work context checked, if available
- [ ] Known corporate network or VPN context checked
- [ ] TOR, anonymizer, or unusual proxy context checked, if available
- [ ] Similar source activity across other accounts reviewed
- [ ] No IP or location-based blocking performed without approval

## 9. Benign Possibilities

Account compromise-like alerts may be caused by:

- Expected travel
- VPN or proxy use
- Mobile carrier location changes
- New device enrollment
- Browser or user agent changes
- Password manager activity
- Admin or help desk support
- Service account or automation activity
- User mistyping password
- Conditional access policy changes
- Security testing
- False-positive risky sign-in logic

## 10. Suspicious Possibilities

Account activity may indicate:

- Stolen password
- MFA fatigue or push bombing
- Token theft
- Session hijacking
- Impossible travel from unauthorized access
- Suspicious mailbox rule creation
- Unauthorized forwarding
- OAuth consent abuse
- Privilege misuse
- Data access or exfiltration
- Lateral movement using valid credentials
- Cloud persistence

## 11. Escalation Criteria

Escalate if evidence shows:

- [ ] User denies the activity
- [ ] Successful login from suspicious source
- [ ] Impossible travel with no benign explanation
- [ ] Repeated MFA prompts or suspicious MFA approval
- [ ] New MFA method added unexpectedly
- [ ] Suspicious mailbox rule or forwarding created
- [ ] Suspicious OAuth app, consent grant, or token activity
- [ ] Privileged or sensitive account involved
- [ ] Data access, download, sharing, or permission change concern
- [ ] Multiple accounts show similar suspicious activity
- [ ] Related endpoint, phishing, malware, or cloud alert exists
- [ ] Account activity cannot be explained with available evidence

## 12. Recommended Next Steps

| Priority | Action | Reason | Approval Needed? |
|---|---|---|---|
| High | Review login timeline | Establishes account activity sequence | No |
| High | Review MFA and authentication details | Helps identify MFA fatigue, bypass, or suspicious approval | No |
| High | Review user, device, and location context | Helps separate expected activity from compromise | No |
| Medium | Review mailbox and cloud activity | Identifies suspicious rules, forwarding, grants, or data access | No |
| Medium | Review related endpoint and phishing alerts | Helps identify credential theft source or broader compromise | No |
| Medium | Search for similar account patterns | Helps determine scope | No |
| Low | Document findings and assumptions | Improves review quality and handoff | No |

## 13. Human Approval Required

Approval is required before:

- [ ] Disabling accounts
- [ ] Resetting passwords
- [ ] Resetting MFA
- [ ] Changing MFA methods
- [ ] Revoking sessions
- [ ] Removing devices
- [ ] Removing mailbox rules or forwarding
- [ ] Removing OAuth grants or application access
- [ ] Blocking IPs, locations, domains, or indicators
- [ ] Contacting users
- [ ] Escalating to another team
- [ ] Escalating to leadership
- [ ] Closing incidents
- [ ] Publishing reports
- [ ] Sending external messages

## 14. Analyst Decision

Choose one:

- [ ] Likely benign account activity
- [ ] Expected travel, VPN, device, or support activity
- [ ] Needs more evidence
- [ ] Suspicious, monitor
- [ ] Escalate for investigation
- [ ] Confirmed account compromise

## 15. Final Notes

Write a short decision statement.

Example:

> Possible account compromise activity was reviewed. Compromise was not confirmed from the available evidence. Additional review is needed to confirm login timeline, MFA activity, device context, location context, mailbox activity, cloud activity, and related alerts.

## 16. Closeout Review

Before closing:

- [ ] Alert details reviewed
- [ ] Login timeline reviewed
- [ ] MFA and authentication activity reviewed or marked unavailable
- [ ] Email and cloud activity reviewed or marked unavailable
- [ ] Endpoint and device context reviewed or marked unavailable
- [ ] Network and location context reviewed or marked unavailable
- [ ] Related alerts reviewed or marked unavailable
- [ ] Benign explanations considered
- [ ] Suspicious indicators documented
- [ ] Facts separated from assumptions
- [ ] Missing information documented
- [ ] Approval-required actions marked
- [ ] No account changes made without approval
- [ ] Sensitive evidence protected

