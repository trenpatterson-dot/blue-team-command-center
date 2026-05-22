# Impossible Travel

## Purpose

Review impossible travel or unusual location alerts to determine whether activity is legitimate, explained by network behavior, or suspicious.

## When to Use

- Identity provider reports impossible travel.
- Logins occur from distant locations within an unrealistic time window.
- New country, VPN, proxy, or anonymizer use appears in authentication logs.

## Required Evidence

- Alert details and timestamps.
- Account reference.
- Source IP and geolocation references from approved tools.
- Device, browser, session, and MFA context.
- Known travel, VPN, or remote access context when available.

## Triage Questions

- Are both locations credible based on approved telemetry?
- Was MFA satisfied?
- Is the device known?
- Is a corporate VPN, proxy, mobile carrier, or cloud service involved?
- Does the user confirm the activity?

## Safe Investigation Steps

1. Record the alert reference and time window.
2. Review successful and failed login events around the alert.
3. Compare device, MFA, session, and location context.
4. Check for related account changes or suspicious application activity.
5. Prepare user verification and response recommendations for approval.

## Escalation Criteria

- User denies one or more logins.
- New device, suspicious MFA, or risky session appears.
- Privileged account involved.
- Related mailbox, cloud, or endpoint activity is suspicious.

## Report Output

Use `templates/ALERT-TRIAGE-REPORT.md`.

## Lessons Learned

- Are geolocation and VPN exceptions documented?
- Is impossible travel alert tuning appropriate?
- Was user verification timely?

