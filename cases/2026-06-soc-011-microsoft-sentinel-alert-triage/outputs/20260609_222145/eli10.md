# A Beginner's Guide to a Cybersecurity Lab: Microsoft Sentinel Alert Triage

Welcome! Today, we'll explore a cybersecurity lab called the "2026 06 Soc 011 Microsoft Sentinel Alert Triage." This lab is all about detection engineering and was conducted on its own platform.

## What Happened in the Lab?

In this lab, we received an alert from Microsoft Sentinel, a powerful security information event management (SIEM) system. The alert suggested that someone might have tried to break into a user account multiple times.

## Investigation Steps

1. **Reviewing the Alert Summary:** We started by looking at a summary of the alert, which provided details about the potential security incident.

2. **Identifying the Affected User Account:** Next, we focused on the user account that was targeted in the alert.

3. **Investigating Failed Sign-in Activity:** We then looked into the failed sign-in attempts by the source IP address to understand more about the suspicious activity.

4. **Checking for Successful Authentication:** After identifying the failed attempts, we checked if there were any successful logins following the failures to see if the intruder managed to gain access.

## What Was Found?

Although we don't have all the details (like command history and screenshots), we found some interesting things:

- **Simulated Sign-in Log Events:** These events helped us understand the sequence of failed login attempts.
- **KQL-style Failed Sign-in Query:** This query was used to find the failed sign-ins in Microsoft Sentinel's query language (Kusto Query Language).
- **Investigation Notes:** These notes documented our steps and findings during the investigation.

## Why Does It Matter?

Understanding these types of investigations is crucial for keeping computer systems secure. By learning how to respond to alerts like this one, we can help protect against cyber threats and keep our digital world safe!

This lab also introduced us to Microsoft Sentinel concepts, KQL queries, and the Blue Team Command Center documentation workflow—all valuable tools in the world of cybersecurity.