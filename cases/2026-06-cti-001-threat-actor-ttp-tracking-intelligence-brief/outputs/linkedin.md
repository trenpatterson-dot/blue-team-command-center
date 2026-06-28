Built a CTI case around threat actor TTP tracking.

The scenario tracks a fictional activity cluster called Silver Orchard targeting cloud identity and hosted business services. The evidence is simulated and sanitized, but the workflow is realistic: phishing lure review, password spraying patterns, Microsoft Entra ID-style sign-in activity, suspicious infrastructure notes, cloud app access, MITRE ATT&CK mapping, and finished intelligence reporting.

The main finding: this was not a malware story.

The stronger pattern was identity-first access. Phishing created the entry point. Credential abuse and password spraying created the pressure. Cloud services were the likely target.

I kept the analysis split between observed evidence and analytic judgment. That matters in CTI. A good intelligence brief should help defenders act without overstating attribution, impact, or confidence.

Key defensive recommendations:

- Monitor password spraying across cloud identity accounts
- Alert on success-after-spray patterns
- Review suspicious MFA activity
- Watch mailbox forwarding and OAuth consent changes
- Track suspicious cloud-sharing and vendor-access phishing themes

This is a lab-based portfolio case, not production SOC work or real-world attribution.

#CyberSecurity #BlueTeam #SOC #CTI #ThreatIntelligence #MITREATTACK
