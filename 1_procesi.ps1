$Fails = "$env:USERPROFILE\Documents\LielieProcesi.csv"
$Procesi = Get-Process | Where-Object { $_.WorkingSet64 -gt 150MB -and $_.Name -ne "msedge" }
$Procesi | Select-Object Name, Id, WorkingSet | Export-Csv $Fails -NoTypeInformation
