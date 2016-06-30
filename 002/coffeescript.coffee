# CoffeeScript version 1.8.0
# CoffeeScript version 1.10.0

[summ, a, b, c] = [0, 0, 1, 0]

while c < 4000000
  c = a + b
  [a, b] = [b, c]
  if c % 2 is 0
    summ += c

console.log summ
