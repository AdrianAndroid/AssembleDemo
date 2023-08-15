#include <stdio.h>

int main() {
    int age = 10;
    switch (age)
    {
        case 5:
            printf("iphone！！\n");
            break;
        case 10:
            printf("car！！\n");
            break;
        case 15:
            printf("building！！\n");
            break;
        default:
            printf("sorry！！\n");
            break;
    }

    return 0;
}