$Programmas = winget list | Where-Object { $_ -match "msstore" }
Write-Host "Sistēmā ir instalētas $($Programmas.Count) aplikācijas no Microsoft Store."
