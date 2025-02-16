# Defino logs directory
$logDir = ".\Logs"

# Check if the Logs directory exists, if not it creats it
if (!(Test-Path $logDir)){
    New-Item -ItemType Directory -Path $logDir | Out-Null
}

# Define log file path inside Logs directory
$logFile = "$LogDir\Log.txt"
$backupLogFile = "$logDir\backup-log.txt"

# Get the current date and time
$getDate = Get-Date
Write-Output $getDate

# Add content to a file
$getLog = "Log initialized at {0}" -f $getDate
Write-Host $getLog
Set-Content -Path $logFile -Value $getLog
Get-Content -Path $logFile
Write-host '---Log file updated---'

# Copy the content of the log file to another file
Copy-Item -Path $logFile -Destination $backupLogFile
Get-Content -Path $backupLogFile
Write-Host '---Backup log file updated---'

# Remove the log file
if(Test-Path $backupLogFile) {
    Remove-Item -Path $backupLogFile
    Write-Host '---Backup file removed---'
} else {
    Write-Host '---Backup file does not exist---'
}
