#include <stdio.h>

int main(int argc, char *argv[])
{
  int i = 0;
  for (int i = 1; i < argc; i++) {
    printf("%s\n", argv[i])
  }
  return EXIT_SUCCESS;
}

