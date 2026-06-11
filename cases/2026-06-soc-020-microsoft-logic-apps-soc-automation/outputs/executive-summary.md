# SOC-020 Executive Summary

This case proposes a Microsoft Logic Apps workflow to reduce repetitive work during Microsoft Sentinel and Defender XDR alert handling.

The workflow collects available alert context, prepares an evidence checklist, notifies the assigned analyst, and creates a draft incident note. It improves consistency and speed without assigning final authority to automation.

The design includes missing-data handling, connector failure routing, least-privilege access, auditability, and a manual fallback. A human analyst must validate the evidence, confirm any MITRE ATT&CK mapping, apply escalation criteria, and decide whether to close, escalate, or request authorized containment.

This is a documentation-first lab/case study using simulated evidence. It does not represent a production deployment, production SOC employment, tenant ownership, enterprise authority, or live customer data access.
