# Interview Story Bank

Reusable cybersecurity interview stories from completed labs, cases, and portfolio projects.

---

## IAM / Identity Alert Investigation — Failed Login Triage

**Project:** SOC IAM Identity Alert Investigation  
**Case Folder:** `cases/2026-05-25-soc-iam-identity-alert-investigation`

### Situation

I investigated an identity-focused alert involving failed Windows logon activity. The case centered on repeated Event ID 4625 failed login events, correlation with Event ID 4624 successful logon activity, and a review of account policy settings using `net accounts`.

### Task

My goal was to determine whether the activity showed signs of account compromise, brute-force behavior, weak account policy, or normal lab-controlled authentication noise.

### Action

I reviewed the failed login pattern, checked the timeline from approximately 12:10 PM to 12:30 PM, compared failed authentication events against successful logon evidence, and documented the IAM-related findings. I also reviewed password/account lockout policy context and preserved screenshots as sanitized public evidence.

### Result

The investigation found six failed login events, related successful logon correlation, and no confirmed compromise. The final triage decision was that this was controlled lab evidence with IAM lessons around failed login monitoring, account policy review, and identity-event documentation.

### Interview Angle

This story shows that I can investigate identity alerts, avoid jumping to conclusions, correlate Windows security events, document evidence clearly, and explain the difference between suspicious authentication activity and confirmed compromise.

### Skills Demonstrated

- IAM alert triage
- Windows Event ID 4625 and 4624 review
- Failed login analysis
- Account policy review
- Evidence handling
- SOC-style documentation
- Public/private evidence separation
