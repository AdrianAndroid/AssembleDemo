//
// Created by zhaojian on 2023/8/14.
// https://www.runoob.com/cprogramming/c-function-printf.html
//

#include <stdio.h>
int main()
{
    char ch = 'A';
    char str[20] = "www.runoob.com";
    float flt = 10.234;
    int no = 150;
    double dbl = 20.123456;
    printf("字符为 %c \n", ch);
    printf("字符串为 %s \n" , str);
    printf("浮点数为 %f \n", flt);
    printf("整数为 %d\n" , no);
    printf("双精度值为 %lf \n", dbl);
    printf("八进制值为 %o \n", no);
    printf("十六进制值为 %x \n", no);
    return 0;
}