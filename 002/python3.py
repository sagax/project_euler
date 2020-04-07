# Python 3.2.3
# Python 3.7.3

summ, a, b, c = 0, 0, 1, 0

while c < 4000000:
    c = a + b
    a, b = b, c
    if c % 2 == 0:
        summ += c

print(summ, end='')
