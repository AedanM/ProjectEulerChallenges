$runningSum = 0
$multiples = @(3, 5)
$maxValue = 1000

for ($i = 0; $i -lt $maxValue; $i++) {
    foreach ($val in $multiples) {
        if ($i % $val -eq 0) {
            $runningSum += $i
            break
        }
    }
}

Write-Output $runningSum