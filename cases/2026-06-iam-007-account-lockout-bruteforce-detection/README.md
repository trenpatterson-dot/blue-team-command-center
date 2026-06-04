# IAM-007 — Account Lockout and Brute Force Pattern Detection

## Overview

This case documents a SOC/IAM workflow for detecting repeated failed Windows logon activity in Wazuh. The goal was to generate multiple failed login attempts, search for Event ID 4625, and document how repeated failures can indicate password guessing or brute-force behavior.

## Objective

- Confirm the Wazuh agent was active before testing
- Generate repeated failed Windows logon attempts
- Search for Event ID 4625 in Wazuh
- Review repeated failed logon activity as a pattern
- Confirm failed logon event details and username fields

## Tools Used

- Wazuh
- Windows Security Event Logs
- Windows PowerShell
- Wazuh Agent
- SIEM filtering/search

## Key Evidence

| Evidence | Description |
|---|---|
| 00-wazuh-dashboard-ready-before-test | Wazuh dashboard was available before testing |
| 01-wazuh-agent-active-before-test | Windows endpoint agent was active before the test |
| 03-failed-logon-events-visible | Wazuh showed failed logon events |
| 05-repeated-failed-logons-pattern | Wazuh showed 5 failed logon hits in the selected time window |
| 06-failed-logon-event-detail-4625 | Event details confirmed Event ID 4625 |
| 07-source-user-target-user-fields | Username-related fields were reviewed |

## Findings

### Finding 1: Repeated failed logon activity was detected

Multiple failed Windows logon attempts were generated and detected in Wazuh. The events appeared under Event ID 4625 with the rule description `Logon Failure - Unknown user or bad password`.

### Finding 2: The failed logons formed a visible pattern

Wazuh showed 5 failed logon hits in the selected time window. This type of clustering can indicate password guessing, brute force attempts, stale credentials, account misuse, or misconfigured services.

### Finding 3: Agent health was confirmed before testing

The Windows endpoint agent was confirmed active before the test. This matters because analysts need to verify log source health before relying on SIEM results.

## Security Value

Repeated failed logon monitoring is a basic but important IAM detection use case. Event ID 4625 can help analysts identify suspicious authentication behavior, especially when failures repeat against the same username, endpoint, source address, or time window.

## Analyst Takeaway

This case shows how a SOC analyst can move from a single failed login event to a pattern-based investigation. One failed login may be normal. Multiple failures in a short window deserve review.
