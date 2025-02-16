# Description: A simple script to write to the console and a file 
Write-Host 'Hello world'

# Get the current date and time
$getDate = Get-Date
Write-Output $getDate

# Add content to a file
$getLog = "Log initialized at $getDate"
Write-Host $getLog
Add-Content -Path .\log.txt -Value $getLog
Get-Content -Path .\log.txt
Write-host '---Log file updated---'

# Copy the content of the log file to another file
Get-Content -Path .\log.txt | Add-Content -Path .\backup-log.txt
Get-Content -Path .\backup-log.txt
Write-Host '---Backup log file updated---'

# Remove the log file
Remove-Item -Path .\backup-log.txt
Write-Host '---Backup log file removed---'