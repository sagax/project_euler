// gcc (SUSE Linux) 4.7.1 20120723 [gcc-4_7-branch revision 189773]

#include <stdio.h>

int main()
{
    int summ = 0;
    for (int item = 0; item < 1000; item++) {
        if (item % 3 == 0 || item % 5 == 0) {
            summ += item;
        }
    }
    printf ("%d\n", summ);
    return 0;
}
