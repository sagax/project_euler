// gcc (SUSE Linux) 4.7.1 20120723 [gcc-4_7-branch revision 189773]

#include <stdio.h>

int main() {
    int summ = 0, a = 0, b = 1, c = 0;

    while (c < 4000000) {
        c = a + b;
        a = b;
        b = c;
        if (c % 2 == 0) {
            summ += c;
        }
    }

    printf ("%d", summ);
    return 0;
}
