# LinkedIn Draft

Completed SOC-020: Microsoft Logic Apps SOC Automation.

This lab/case study focused on designing a Microsoft security automation workflow that supports alert triage without replacing analyst judgment.

The proposed Logic Apps workflow:

- Receives a Microsoft Sentinel or Defender XDR alert
- Extracts user, host, IP, severity, title, and timestamp
- Prepares an evidence collection checklist
- Notifies the assigned analyst
- Creates a draft incident note
- Stops at a human approval checkpoint

The key lesson: good SOC automation should reduce repetitive work while preserving evidence review, escalation criteria, and final incident response decisions for the human analyst.

Skills practiced included Microsoft Sentinel, Defender XDR, Logic Apps, SOC automation, alert triage, evidence collection, incident documentation, MITRE ATT&CK validation, failure handling, and security governance.

This was a simulated portfolio case, not production SOC activity or a live Microsoft tenant deployment.
