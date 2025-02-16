# Generate an Array
$aNum = 5, 12, 7, 3, 9

# Convert the array to an ArrayList
$aNum = [System.Collections.ArrayList]@($aNum)

# Initialize variables
$sumA = 0
$maxNum = 0
$extraNum = 0

# Loop through the array and print the values
foreach ($num in $aNum) {
    $sumA += $num
    if ($num -gt $maxNum) {
        $maxNum = $num
    }
    Write-Host "Number: $num"
}

$extraNum = Read-Host "Add an extra number"

# Convert the input to an integer
$extraNum = [int]$extraNum

$aNum.add($extraNum)
Write-Host "Extra number: $extraNum"
Write-Host "Array: $aNum"

# Print the sum of the array
Write-Host "Sum of numbers: $sumA"

# Print the maximum number in the array
Write-Host "Maximum number: $maxNum"

# Sort the array in ascending order
$aNum.Sort()
Write-Host "Sorted array: $aNum"