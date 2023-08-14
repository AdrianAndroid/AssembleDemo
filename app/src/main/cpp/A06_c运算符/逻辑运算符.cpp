#include <stdio.h>

int main() {
    int a = 5;
    int b = 20;
    int c;

    if (a && b) {
        printf("Line 1 - true  条件为真\n");
    }
    if (a || b) {
        printf("Line 2 - false 条件为真\n");
    }
    /* 改变 a 和 b 的值 */
    a = 0;
    b = 10;
    if (a && b) {
        printf("Line 3 - true  条件为真\n");
    } else {
        printf("Line 3 - false 条件为假\n");
    }
    if (!(a && b)) {
        printf("Line 4 - true 条件为真\n");
    }
}