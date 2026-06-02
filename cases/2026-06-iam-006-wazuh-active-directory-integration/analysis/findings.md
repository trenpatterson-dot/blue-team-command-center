# Findings — IAM-006

## Finding 1: Windows Security events were visible in Wazuh

### Summary
Wazuh successfully received Windows Security channel events from the Windows endpoint after agent connectivity was restored.

### Evidence
- 02-windows-security-events-in-wazuh
- 06-windows-security-events-after-reconnect
- 07-windows-audit-failure-events-visible
- 09-windows-security-event-detail-5038-code-integrity

### Impact
Centralized Windows Security logging improves SOC visibility into endpoint and identity-related activity. Instead of relying only on local Event Viewer, analysts can review security events inside a SIEM workflow.

### Recommendation
Continue forwarding Windows Security events to Wazuh and maintain repeatable search filters for authentication, account activity, and audit failure events.

---

## Finding 2: Wazuh agent disconnected due to outdated manager IP

### Summary
The Windows Wazuh agent was visible in the Wazuh dashboard but showed as disconnected. Troubleshooting confirmed the Wazuh service was running, but the endpoint was still configured to use an outdated Wazuh manager IP address.

### Evidence
- 01-wazuh-agent-disconnected-before-fix
- 03-agent-connectivity-test-success
- 04-agent-log-connected-to-manager
- 05-wazuh-agent-connected-after-fix

### Root Cause
The Wazuh VM IP changed from 192.168.64.130 to 192.168.64.135, but the Windows agent configuration still pointed to the old manager IP.

### Impact
When the agent could not reach the manager, endpoint security events were not reliably visible in Wazuh. This reduced SIEM visibility for IAM and Windows Security activity.

### Resolution
The Windows agent configuration was updated to use the current Wazuh manager IP. After restarting WazuhSvc, the agent returned to active status.

### Recommendation
Use a stable/static IP for the Wazuh manager in lab environments or update endpoint agent configurations when lab network addresses change.

---

## Finding 3: Failed Windows logon activity was detected in Wazuh

### Summary
A failed Windows logon attempt was generated and detected in Wazuh as a Windows Security event.

### Evidence
- 10-failed-logon-events-visible
- 11-failed-logon-event-detail-4625

### Key Event Fields
- Event ID: 4625
- Target username: FakeUser
- Channel: Security
- Message: An account failed to log on
- Agent: Trennie-PC

### Impact
Failed logon monitoring helps analysts identify possible password guessing, account misuse, unauthorized access attempts, or early signs of account compromise.

### Recommendation
Create repeatable Wazuh filters for failed logons and review spikes in Event ID 4625 activity during IAM investigations.
