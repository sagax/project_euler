# GNU Awk 4.0.1
# GNU Awk 4.1.1, API: 1.1
# GNU Awk 4.2.1, API: 2.0

BEGIN {
    summ = 0
    for (item = 0; item < 1000; item++) {
        if (item % 3 == 0 || item % 5 == 0) {
            summ += item
        }
    }
    printf summ
}
