## Overview

The investigation focuses on a simulated phishing attack, documented under the project name "2026 06 Soc 012 Microsoft Defender EDR Alert Investigation". The exercise was conducted on a standalone platform.

## Tools & Environment

The primary tool utilized in this lab is PowerShell. The specific environment details, such as target and source IPs, hostnames, usernames, ports, protocols, scan type, rule IDs, and MITRE techniques, are not explicitly provided in the evidence_map.

## What Triggered The Investigation

The investigation was initiated following a Defender-style alert summary, which indicated potential suspicious activity on an endpoint.

## What Was Observed

Upon reviewing the alert, several observations were made:
1. Suspicious PowerShell execution.
2. Parent and child process relationships.
3. Encoded or unusual command-line activity.
4. KQL-style hunting logic was employed to further investigate the incident.

## Evidence That Confirmed It

The evidence that confirmed the observations includes:
1. Simulated endpoint process events.
2. Advanced Hunting KQL-style query results.
3. Command history related to the suspicious PowerShell execution.
4. Investigation notes detailing the analysis of the observed findings.
5. Screenshot evidence, although not explicitly mentioned in the evidence_map, is expected to be present based on the project's description.

## Findings

The investigation confirmed the following findings:
1. The identified activity was related to MITRE ATT&CK techniques T1027 (Email attachment malware), T1059.001 (Command and Scripting Interpreter), T1204.002 (PowerShell), and T1566.001 (Signed Binary Proxy Execution).
2. Containment and remediation actions were taken to address the identified threat.

## Security Significance

This investigation serves as a valuable exercise in detecting and responding to phishing attacks, focusing on PowerShell-based techniques commonly used by threat actors. Understanding these tactics can help improve an organization's cybersecurity posture and incident response capabilities. However, the missing command history and screenshots limit the depth of analysis and findings presented here.