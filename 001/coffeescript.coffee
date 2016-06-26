# CoffeeScript version 1.8.0
# CoffeeScript version 1.10.0

summ = 0
for item in [0...1000]
  if item % 3 is 0 or item % 5 is 0
    summ += item

console.log summ
