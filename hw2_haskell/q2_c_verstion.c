#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void printStar(int n, char *result) {
  int i;
  for (i = 0; i < n; i++) {
    result[i] = '*';
  }
  result[i] = '\0';
}

void addSpace(int n, char *result) {
  int i;
  int spaces = 2 - (n - 1) / 2;
  for (i = 0; i < spaces; i++) {
    result[i] = ' ';
  }
  char stars[1024];
  printStar(n, stars);
  strcpy(result + i, stars);
  i += n;
  for (; i < spaces + n + spaces; i++) {
    result[i] = ' ';
  }
  result[i] = '\0';
}

void printPattern(char *result) {
  int i = 0;
  char temp[1024];
  for (int n = 1; n <= 5; n += 2) {
    addSpace(n, temp);
    strcpy(result + i, temp);
    i += strlen(temp);
    result[i++] = '\n';
  }
  for (int n = 3; n >= 1; n -= 2) {
    addSpace(n, temp);
    strcpy(result + i, temp);
    i += strlen(temp);
    result[i++] = '\n';
  }
  result[i - 1] = '\0';
}

int main(int argc, char **argv) {
  char result[1024 * 1024];
  memset(result, 0, sizeof(result));
  printPattern(result);
  printf("%s", result);
  return 0;
}
