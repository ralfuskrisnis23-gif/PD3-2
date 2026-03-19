$AV = Get-MpComputerStatus
$Reitings = 100
if ($AV.RealTimeProtectionEnabled -eq $false) { $Reitings -= 50 }
if ($AV.AntivirusSignatureAge -gt 3) { $Reitings -= 20 }
if ($AV.QuickScanAge -gt 7) { $Reitings -= 20 }
Write-Host "Sistēmas drošības reitings: $Reitings / 100"
