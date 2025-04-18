# Define the parameter for the script, requiring the user to specify the file path
param (
    [Parameter(Mandatory = $true)]  # Make this parameter mandatory
    [string]$FilePath              # Specify that the parameter will be a string (the file path)
)

# Check if the file exists at the provided path
if (Test-Path $FilePath) {
    # Get the file's properties using Get-Item
    $file = Get-Item $FilePath

    # Display the file properties
    Write-Host "File Properties:"
    Write-Host "-----------------"
    Write-Host "Name: $($file.Name)"              # Show the file's name
    Write-Host "Full Path: $($file.FullName)"    # Show the full path of the file
    Write-Host "Size (bytes): $($file.Length)"  # Show the file size in bytes
    Write-Host "Extension: $($file.Extension)"  # Show the file extension
    Write-Host "Created: $($file.CreationTime)" # Show the file creation time
    Write-Host "Last Accessed: $($file.LastAccessTime)" # Show the last access time of the file
    Write-Host "Last Modified: $($file.LastWriteTime)" # Show the last modified time of the file
    Write-Host "Is Read Only: $($file.IsReadOnly)" # Show if the file is read-only
    Write-Host "Attributes: $($file.Attributes)" # Show the file's attributes (e.g., hidden, system)
} else {
    # If the file doesn't exist, display a message
    Write-Host "File not found: $FilePath"
}
