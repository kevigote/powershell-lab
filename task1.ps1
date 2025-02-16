# Description: A simple script to write to the console and a file 
Write-Host 'Hello world'

# Get the current date and time
$getDate = Get-Date
Write-Output $getDate

# Add content to a file
$getLog = "Log initialized at {0}" -f $getDate
Write-Host $getLog
Set-Content -Path .\log.txt -Value $getLog
Get-Content -Path .\log.txt
Write-host '---Log file updated---'

# Copy the content of the log file to another file
Copy-Item -Path .\log.txt -Destination .\backup-log.txt
Get-Content -Path .\backup-log.txt
Write-Host '---Backup log file updated---'

# Remove the log file
if(Test-Path .\backup-log.txt) {
    Remove-Item -Path .\log.txt
    Write-Host '---Log file removed---'
} else {
    Write-Host 'Backup file does not exist.'
}
