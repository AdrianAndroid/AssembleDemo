#include <stdio.h>
#include <stdarg.h>

void print_values(int count, ...) {
    va_list args;
    va_start(args, count);
    for (int i = 0; i < count; i++) {
        printf("%d ", va_arg(args, int));
    }
    va_end(args);
}

int main() {
    print_values(3, 1, 2, 3); // 输出 "1 2 3"
    return 0;
}