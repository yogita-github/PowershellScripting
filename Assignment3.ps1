# Loop through numbers from 0 to 10
for($i=0;$i -le 10;$i++){
    # Check if the number is even (i.e., divisible by 2)
    if($i%2 -eq 0){
        # If the number is even, print it to the screen
        Write-Host $i
    }
}