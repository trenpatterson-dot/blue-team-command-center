# Timeline — IAM-006

| Time | Event | Source | Analyst Notes |
|---|---|---|---|
| TBD | Windows agent appeared disconnected | Wazuh Agents | Agent Trennie-PC was visible but showed disconnected |
| TBD | Wazuh agent service checked | Windows PowerShell | WazuhSvc was running on the Windows endpoint |
| TBD | Existing manager IP reviewed | Windows ossec.conf | Agent was configured to connect to 192.168.64.130 on TCP 1514 |
| TBD | Old manager IP tested | Windows PowerShell | Test-NetConnection to 192.168.64.130:1514 failed |
| TBD | Current Wazuh VM IP identified | Wazuh Ubuntu VM | Current Wazuh manager IP was identified as 192.168.64.135 |
| TBD | New manager IP tested | Windows PowerShell | Test-NetConnection to 192.168.64.135:1514 succeeded |
| TBD | Agent configuration updated | Windows ossec.conf | Manager address was changed to the current Wazuh VM IP |
| TBD | Wazuh agent restarted | Windows PowerShell | WazuhSvc was restarted after the configuration change |
| TBD | Agent connection confirmed | Wazuh agent log | Agent log showed connection to the Wazuh manager on TCP 1514 |
| TBD | Agent active status confirmed | Wazuh Agents | Trennie-PC returned to active status |
| TBD | Windows Security events reviewed | Wazuh Events | Wazuh displayed Windows Security channel events from Trennie-PC |
| TBD | Windows audit failure events reviewed | Wazuh Events | Wazuh showed Windows audit failure events with rule ID 60104 |
| TBD | Failed logon test generated | Windows endpoint | A failed login attempt was created using FakeUser |
| TBD | Failed logon detected in Wazuh | Wazuh Events | Wazuh displayed logon failure events from Trennie-PC |
| TBD | Event ID 4625 confirmed | Wazuh Document Details | Failed logon event showed Event ID 4625 and target username FakeUser |
