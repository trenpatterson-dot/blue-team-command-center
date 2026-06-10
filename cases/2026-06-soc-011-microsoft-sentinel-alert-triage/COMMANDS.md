# SOC-011 Command History / Query Notes

Review alert summary:
Get-Content .\evidence\sentinel-alert-summary.md

Review simulated sign-in logs:
Import-Csv .\evidence\signin-log-events.csv | Format-Table

Filter suspicious source IP:
Import-Csv .\evidence\signin-log-events.csv | Where-Object {$_.IPAddress -eq "203.0.113.45"}

Filter failed sign-ins:
Import-Csv .\evidence\signin-log-events.csv | Where-Object {$_.Result -eq "Failure"}

Review KQL-style query:
Get-Content .\queries\sentinel-failed-signins.kql
