$Fails = "$env:USERPROFILE\Documents\Servisi.log"
$Laiks = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
foreach ($Serviss in @("Spooler", "wuauserv")) {
$Statuss = (Get-Service -Name $Serviss).Status
Add-Content $Fails "[$Laiks] Serviss $Serviss ir $Status"
}
