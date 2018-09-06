var summ = 0
for i in 0..999:
  if (i mod 3) == 0 or (i mod 5) == 0:
    summ += i

echo summ
