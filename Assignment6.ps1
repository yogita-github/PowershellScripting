# Define the path to the file and the text to use if the file doesn't exist
$path = "D:\newFile.txt"
$text = "This is first file used to replace text"

# Check if the file exists. If it does, read its content; if not, use the default text
$content = if (Test-Path $path) { Get-Content $path -Raw } else { $text }

# Replace "first file" with "Second file" in the content and save it back to the file
$content -replace "first file", "Second file" | Set-Content $path
