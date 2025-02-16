# Variable to store the input
$num = 0
$parsedNum = 0

# Loop until the user types "exit"
while ($true) {
    # Ask for a input
    $num = Read-Host "Add a numeric value"

    # Check if the user wants to exit
    if ($num -eq "exit") {
        Write-Host "Exiting the script"
        break
    }
    
    # Try to convert input to an integer
    if([int]::TryParse($num, [ref]$parsedNum)){
        # Check if the number is even or odd
        if ($parsedNum % 2 -eq 0){
            Write-Host "The number $parsedNum is even"
        } else {
            Write-Host "The number $parsedNum is odd"
        }
    } else {
            Write-Host "Invalid input. Please add a numeric value, because '$num' is not a valid number"
    }
}