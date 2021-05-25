#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

bool write_to_file(const char *path, const char *text);


int main() {
    char* path = "/home/mixoz/keklol.txt";
    char* str = "";
    printf("%d", write_to_file(path, str));
    return 0;
}