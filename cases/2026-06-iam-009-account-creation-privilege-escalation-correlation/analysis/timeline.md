# Timeline — IAM-009

| Time | Event | Source | Analyst Notes |
|---|---|---|---|
| TBD | Wazuh agent status verified | Wazuh Agents | Trennie-PC was active before testing |
| TBD | Test account created | Windows PowerShell | IAMCorrUser was created as a controlled local test account |
| TBD | Account creation event confirmed | Wazuh Events | Event ID 4720 appeared in Wazuh |
| TBD | Account creation details reviewed | Wazuh Document Details | Event details confirmed the created account |
| TBD | Test account added to Administrators | Windows PowerShell | IAMCorrUser was added to the local Administrators group |
| TBD | Administrator group add event confirmed | Wazuh Events | Event ID 4732 appeared in Wazuh |
| TBD | Administrator group add details reviewed | Wazuh Document Details | Event details confirmed Administrators group membership change |
| TBD | Test account removed from Administrators | Windows PowerShell | IAMCorrUser was removed from the local Administrators group |
| TBD | Administrator group removal reviewed | Wazuh Document Details | Event ID 4733 confirmed group removal |
| TBD | Test account deleted | Windows PowerShell | IAMCorrUser was deleted during cleanup |
| TBD | Account deletion event confirmed | Wazuh Events | Event ID 4726 appeared in Wazuh |
| TBD | Lifecycle correlation reviewed | Wazuh Events | Account creation, privilege change, removal, and deletion were reviewed together |
