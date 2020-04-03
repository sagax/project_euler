# Python 2.7.3
# Python 2.7.12
# Python 2.7.16

import sys
summ = 0
for item in range(0, 1000):
    if item % 3 is 0 or item % 5 is 0:
        summ += item

sys.stdout.write("%d" % summ)
