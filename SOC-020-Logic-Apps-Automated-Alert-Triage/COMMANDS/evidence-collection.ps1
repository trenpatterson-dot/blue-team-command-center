Write-Host "=== Host Information ==="

Get-ComputerInfo |
Select-Object `
CsName,
WindowsVersion,
OsBuildNumber

Write-Host ""

Write-Host "=== Recent PowerShell Activity ==="

Get-WinEvent `
-LogName "Windows PowerShell" `
-MaxEvents 20

Write-Host ""

Write-Host "=== Running Processes ==="

Get-Process |
Sort-Object CPU -Descending |
Select-Object -First 20