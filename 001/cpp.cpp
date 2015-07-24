#include <stdio.h>

int main(void) {
    int summ = 0;
    for (int item = 0; item < 1000; item += 1) {
        if (item % 3 == 0 || item % 5 == 0) {
            summ += item;
        }
    }
    printf ("%d\n", summ);
}
