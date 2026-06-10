## Lab Recap
- **Lab Name:** 2026 06 Soc 011 Microsoft Sentinel Alert Triage
- **Platform:** Standalone
- **Lab Type:** Detection Engineering
- **Date Completed:** Not specified in the task payload
- **Objective:** Investigate a simulated alert in Microsoft Sentinel and triage it using KQL queries.
- **Tools Used:** Microsoft Sentinel, Visual Studio Code (for KQL editing)
- **What I Did:** Reviewed a Sentinel-style alert summary, identified the affected user account, reviewed failed sign-in activity by source IP, and checked for successful authentication after the failed attempts using KQL queries.
- **What I Found / Results:** Confirmed simulated sign-in log events, a KQL-style failed sign-in query, and Microsoft Sentinel concepts.
- **What Clicked / What I Learned:** The importance of using KQL queries for alert triage in Microsoft Sentinel.
- **Difficulty:** Moderate (familiarity with KQL is required)
- **Screenshots:** None provided in the task payload
- **Tags:** Microsoft Sentinel, KQL, Alert Triage, Detection Engineering

## Study Notes
- Understand the structure and components of a Sentinel-style alert summary.
- Familiarize yourself with KQL (Kusto Query Language) for querying log data in Microsoft Sentinel.
- Learn how to investigate failed sign-ins using KQL queries in Microsoft Sentinel.
- Understand the MITRE ATT&CK techniques associated with failed sign-in attempts: T1078 (Impersonation), T1110 (Brute Force), and T1110.003 (Credential Dumping).
- Familiarize yourself with the Blue Team Command Center documentation workflow for Microsoft Sentinel.