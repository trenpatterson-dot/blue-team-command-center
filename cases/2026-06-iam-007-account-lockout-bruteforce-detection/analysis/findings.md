# Findings — IAM-007

## Finding 1: Repeated failed logon activity detected in Wazuh

### Summary
Multiple failed Windows logon attempts were generated and detected in Wazuh using Event ID 4625.

### Evidence
- 03-failed-logon-events-visible
- 05-repeated-failed-logons-pattern
- 06-failed-logon-event-detail-4625
- 07-source-user-target-user-fields

### Key Details
- Event ID: 4625
- Rule description: Logon Failure - Unknown user or bad password
- Agent: Trennie-PC
- Pattern: 5 failed logon hits in the selected time window

### Impact
Repeated failed logons can indicate password guessing, brute force attempts, account misuse, stale credentials, or misconfigured services.

### Recommendation
Monitor Event ID 4625 in Wazuh and review repeated failures by username, endpoint, source address, logon type, and time window.

---

## Finding 2: Wazuh agent was active before testing

### Summary
The Windows endpoint agent was confirmed active in Wazuh before generating the failed logon activity.

### Evidence
- 01-wazuh-agent-active-before-test

### Impact
Confirming agent health before testing ensures the SIEM is receiving endpoint telemetry and reduces the risk of missing security events.

### Recommendation
Before investigating IAM activity, confirm the relevant log source or endpoint agent is active and forwarding events.
