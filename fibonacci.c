#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

uint64_t fibonacci(uint64_t n) {
  if (n <= 0) return 0;
  if (n == 1 || n == 2) return 1;

  uint64_t pred = 1, curr = 1, succ;

  for (uint64_t i=3; i<=n; i++) {
    succ = pred + curr;
    pred = curr;
    curr = succ;
  }

  return curr;
}

int main(int argc, char **argv) {
  uint64_t n, result;
  int iterations;

  n = strtoul(argv[1], NULL, 10);
  iterations = argc > 2 ? atoi(argv[2]) : 1;

  for (int i=0; i<iterations; i++) {
    result = fibonacci(n);
  }

  printf("%lu\n", result);
}
