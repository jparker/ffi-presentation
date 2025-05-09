#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>

bool is_prime(uint64_t n) {
  if (n == 2) return true;
  if (n % 2 == 0) return false;

  for (uint64_t div = 3, i = 0; div <= sqrt((double)n); div += 2, i++) {
    if ((i & 0xffffff) == 0) printf("checking: %lu\n", div);
    if (n % div == 0) return false;
  }

  return true;
}

int main(int argc, char **argv) {
  uint64_t n = strtoul(argv[1], NULL, 10);

  if (is_prime(n)) {
    printf("%lu is prime\n", n);
  } else {
    printf("%lu is not prime\n", n);
  }
}
