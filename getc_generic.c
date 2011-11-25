#include <stdio.h>

int main (void) {
  int c, n;
  FILE *in = fopen("/dev/zero", "rb");
  for(n = 0; n < 1000000000; ++n)
    c = GETC(in);
  return 0;
}
