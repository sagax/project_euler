# Nim Compiler Version 0.18.0

var summ = 0
for i in 0..<1000:
  if (i mod 3) == 0 or (i mod 5) == 0:
    summ += i

stdout.write summ
