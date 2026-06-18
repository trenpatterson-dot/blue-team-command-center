Write-Host "=== Local Administrators ==="

Get-LocalGroupMember Administrators

Write-Host ""

Write-Host "=== Enabled Local Accounts ==="

Get-LocalUser |
Where-Object {$_.Enabled -eq $true}

Write-Host ""

Write-Host "=== Current Logon Sessions ==="

query user

Write-Host ""

Write-Host "=== Running Processes ==="

Get-Process |
Sort-Object CPU -Descending |
Select-Object -First 20