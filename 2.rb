maxValue = 4 * 1e6

runningTotal = 0
currentValue = 1
prevVal = 1
while currentValue < maxValue
  if (currentValue % 2 == 0)
    runningTotal += currentValue
  end
  currentValue += prevVal
  prevVal = currentValue - prevVal
end
puts(runningTotal)
