#include <stdio.h>
#include <stdlib.h>

int main() {

    enum color {
        red = 1, green, blue
    };

    enum color favorite_color;

    /* 用户输入数字来选择颜色 */
    printf("请输入你喜欢的颜色: (1. red, 2. green, 3. blue): ");
    scanf("%u", &favorite_color);

    /* 输出结果 */
    switch (favorite_color) {
        case red:
            printf("RED");
            break;
        case green:
            printf("GREEN");
            break;
        case blue:
            printf("BLUE");
            break;
        default:
            printf("DEFAULT");
    }

    return 0;
}