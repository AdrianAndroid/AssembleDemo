#include <stdio.h>

int for_for() {
    /* 局部变量定义 */
    int i, j;

    for (i = 2; i < 100; i++) {
        for (j = 2; j <= (i / j); j++)
            if (!(i % j)) break; // 如果找到，则不是质数
        if (j > (i / j)) printf("%d 是质数\n", i);
    }

    return 0;
}

int while_() {
    int i = 1, j;
    while (i <= 5) {
        j = 1;
        while (j <= i) {
            printf("%d ", j);
            j++;
        }
        printf("\n");
        i++;
    }
    return 0;
}

int do_while() {
    int i = 1, j;
    do {
        j = 1;
        do {
            printf("*");
            j++;
        } while (j <= i);
        i++;
        printf("\n");
    } while (i <= 5);
    return 0;
}

int main() {
    for_for();
    while_();
    do_while();
    return 0;
}