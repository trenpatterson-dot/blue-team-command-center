# Command History / Query Notes

Review sign-in risk summary:
Get-Content .\evidence\azure-signin-risk-summary.md

Review simulated Azure sign-in events:
Import-Csv .\evidence\azure-signin-events.csv | Format-Table

Filter affected user:
Import-Csv .\evidence\azure-signin-events.csv | Where-Object {$_.UserPrincipalName -eq "analyst3@contoso.local"}

Filter suspicious source IP:
Import-Csv .\evidence\azure-signin-events.csv | Where-Object {$_.IPAddress -eq "203.0.113.88"}

Filter failed sign-ins:
Import-Csv .\evidence\azure-signin-events.csv | Where-Object {$_.Result -eq "Failure"}

Filter MFA not satisfied:
Import-Csv .\evidence\azure-signin-events.csv | Where-Object {$_.MFAResult -eq "Not satisfied"}

Review KQL-style query:
Get-Content .\queries\azure-risky-signins.kql
