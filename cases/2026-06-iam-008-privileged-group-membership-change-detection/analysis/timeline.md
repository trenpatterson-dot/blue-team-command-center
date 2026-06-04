# Timeline — IAM-008

| Time | Event | Source | Analyst Notes |
|---|---|---|---|
| TBD | Wazuh agent status verified | Wazuh Agents | Trennie-PC was active before generating test events |
| TBD | Local Administrators group reviewed | Windows PowerShell | Baseline Administrators group membership was captured |
| TBD | Test user created | Windows PowerShell | IAMTestUser was created as a controlled local test account |
| TBD | Test user added to Administrators | Windows PowerShell | IAMTestUser was added to the local Administrators group |
| TBD | Privileged group change searched | Wazuh Events | Wazuh showed Administrators Group Changed events |
| TBD | Event ID 4732 reviewed | Wazuh Document Details | Event detail confirmed a member was added to a security-enabled local group |
| TBD | Test user removed from Administrators | Windows PowerShell | IAMTestUser was removed from the local Administrators group |
| TBD | Event ID 4733 reviewed | Wazuh Document Details | Event detail confirmed a member was removed from a security-enabled local group |
| TBD | Test user deleted | Windows PowerShell | IAMTestUser was deleted after the test to clean up the lab |
