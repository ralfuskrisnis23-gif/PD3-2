$Programmas = winget list | Where-Object { $_ -match "msstore" }
Write-Host "Sistēmā ir instalētas $($Programmas.Count) aplikācija no Microsoft Store."
