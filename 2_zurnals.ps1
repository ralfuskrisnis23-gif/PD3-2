$Fails = "$env:USERPROFILE\Documents\Warnings.txt"
$Brindinajumi = Get-EventLog -LogName Application -EntryType Warning -After (Get-Date).AddDays(-3)
$Brindinajumi | Out-File $Fails
$Brindinajumi | Group-Object Source | Sort-Object Count -Descending | Select-Object -First 3 | Out-File $Fails -Append
