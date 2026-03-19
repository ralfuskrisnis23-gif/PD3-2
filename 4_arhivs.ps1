$Arhivs = "$env:USERPROFILE\Documents\PDF_Backup.zip"
$PDF = Get-ChildItem "$env:USERPROFILE\Downloads" -Filter *.pdf | Where-Object { $_.LastWriteTime -gt (Get-Date).AddHours(-48) }
Compress-Archive -Path $PDF.FullName -DestinationPath $Arhivs -Forc
