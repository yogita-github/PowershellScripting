# Prompt the user to enter the first number and store it in $num1
$num1 = Read-Host -Prompt "Enter first number"

# Prompt the user to enter the second number and store it in $num2
$num2 = Read-Host -Prompt "Enter second number"

# Convert the inputs to integers and add them together, then store the result in $result
$result =[int]$num1 + [int]$num2

# Output the result to the screen
Write-Host $result
