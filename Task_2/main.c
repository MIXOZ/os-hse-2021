#include <stdio.h>
#include <stdint.h>

uint64_t product_of_min_and_max_primes(const uint32_t *data, uint32_t size);

int main() {
    uint32_t n = 10;
    uint32_t arr[n];
    for (uint32_t i = 0; i < n; ++i)
        arr[i] = i;
    printf("%lu\n", product_of_min_and_max_primes(arr, n));
    return 0;
}