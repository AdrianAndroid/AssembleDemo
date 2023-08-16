#include <stdio.h>

int main() {
    char site[7] = {'R', 'U', 'N', 'O', 'O', 'B', '\0'};
    printf("菜鸟教程: %s\n", site);
    return 0;
}


int main2() {
    char site[] = "RUNOOB";
    printf("菜鸟教程: %s\n", site);
    return 0;
}