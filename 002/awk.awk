# GNU Awk 4.0.1

BEGIN {
    summ=0; a=0; b=1; c=0
    while (c < 4000000) {
        c = a + b
        a = b
        b = c
        if (c % 2 == 0) {
            summ += c
        }
    }
    print summ
}
