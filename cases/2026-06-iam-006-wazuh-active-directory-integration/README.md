# IAM-006 — Wazuh + Windows Security Event Integration

## Overview

This case documents a SOC/IAM monitoring workflow using Wazuh and a Windows endpoint. The goal was to confirm that Windows Security events could be collected in Wazuh and used to investigate identity-related activity.

During the lab, the Windows Wazuh agent initially appeared disconnected. I troubleshot the issue, identified that the Wazuh manager IP address had changed, updated the Windows agent configuration, restored connectivity, and confirmed that failed Windows logon activity appeared in Wazuh.

## Objective

- Verify Wazuh agent connectivity from a Windows endpoint
- Troubleshoot a disconnected Wazuh agent
- Confirm Windows Security event ingestion in Wazuh
- Generate and detect a failed Windows logon event
- Confirm Event ID 4625 in Wazuh Document Details

## Tools Used

- Wazuh
- Windows Security Event Logs
- Windows PowerShell
- Wazuh Agent
- Ubuntu Wazuh VM
- Git / GitHub

## Key Findings

### Finding 1: Wazuh agent disconnected because the manager IP changed

The Windows Wazuh agent was running, but it was configured to connect to an outdated Wazuh manager IP. Updating the agent configuration restored connectivity.

### Finding 2: Windows Security events were visible in Wazuh

After the agent reconnected, Wazuh displayed Windows Security channel events from the endpoint.

### Finding 3: Failed logon activity was detected in Wazuh

A failed login attempt using a fake account generated a Windows Security event. Wazuh detected the activity and showed Event ID 4625.

## Key Evidence

| Evidence | Description |
|---|---|
| 01-wazuh-agent-disconnected-before-fix | Wazuh showed the Windows agent as disconnected |
| 03-agent-connectivity-test-success | TCP connection to the current Wazuh manager IP succeeded |
| 04-agent-log-connected-to-manager | Windows agent log confirmed connection to the manager |
| 05-wazuh-agent-connected-after-fix | Wazuh showed the agent as active |
| 07-windows-audit-failure-events-visible | Windows audit failure events appeared in Wazuh |
| 10-failed-logon-events-visible | Wazuh displayed failed logon activity |
| 11-failed-logon-event-detail-4625 | Event details confirmed failed logon Event ID 4625 |

## Security Value

This case shows why centralized logging matters for IAM and SOC monitoring. If endpoint logs stay isolated on the local machine, analysts may miss authentication failures, account misuse, or early signs of credential-based attacks.

By bringing Windows Security events into Wazuh, the analyst can search, filter, and investigate identity-related activity from one SIEM workflow.

## Analyst Takeaway

The biggest lesson from this case was that SIEM visibility depends on agent health. A disconnected agent can create blind spots. Before investigating alerts, analysts need to confirm that log sources are active, forwarding correctly, and using the correct manager configuration.
