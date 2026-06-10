# A Cybersecurity Lab: Investigating a Suspicious PowerShell Script

In this lab, we're investigating a suspicious script that was found running on a computer. This is called **Malware Analysis**. We used the tool **PowerShell** to look into the problem.

Here's what we did:
1. **Reviewed the PowerShell alert summary**: This told us about the alert and the system where it happened.
2. **Identified the affected host and user**: We found out which computer and user were involved in this issue.
3. **Reviewed suspicious PowerShell command-line activity**: We looked at the commands that the script was running to see if they were doing anything unusual.
4. **Checked for download behavior and encoded or bypass-style arguments**: We checked if the script was trying to download something or using tricks to hide what it's doing.

What we found:
1. **Suspicious download behavior**: The script was trying to download a file, which could be a sign of malicious activity.
2. **Process execution patterns**: The way the script was running processes on the system showed some signs that match with known cyber threats.
3. **MITRE ATT&CK mapping**: We found that the script's behavior matched with techniques used by hackers, as listed in the MITRE ATT&CK framework.

Why it matters:
Understanding and investigating suspicious scripts like this one helps us protect our systems from cyber threats. It's an important part of keeping our computers safe.