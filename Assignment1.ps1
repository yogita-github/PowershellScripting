# Define the service name
$ServiceName = "Notepad"

# Get the service status
$Service = Get-Service -Name $ServiceName

# Check if the service is not running
if ($Service.Status -ne 'Running') {
    Write-Host "Service is not running. Starting the service..."
    Start-Service -Name $ServiceName
    # Refresh the service status
    $Service.Refresh()
    Write-Host "Service status is now: $($Service.Status)"
} else {
    Write-Host "Service is already running."
}