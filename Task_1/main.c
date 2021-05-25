#include <stdio.h>
#include <stdint.h>

void print_hello(const char *name);

int main() {
    char str[10];
    fgets(str, 10, stdin);
    print_hello(str);
    return 0;
}