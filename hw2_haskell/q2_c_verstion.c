#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void starRow(int n, char *result) {
  int i;
  int spaces = abs(n - 2);
  int stars = 2 * (n % 3) + 1;
  for (i = 0; i < spaces; i++) {
    result[i] = ' ';
  }
  for (; i < spaces + stars; i++) {
    result[i] = '*';
  }
  result[i] = '\0';
}

void starPattern(int n, char **result) {
  if (n == 5) {
    return;
  }
  char row[1024];
  starRow(n, row);
  result[n] = strdup(row);
  starPattern(n + 1, result);
}

int main(int argc, char **argv) {
  char *result[1024];
  memset(result, 0, sizeof(result));
  starPattern(0, result);
  for (int i = 0; i < 1024; i++) {
    if (result[i] == NULL) {
      break;
    }
    printf("%s\n", result[i]);
    free(result[i]);
  }
  return 0;
}
