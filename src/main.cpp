#include <source_files/source_files.h>

#include <cstdio>
#include <header_only/header_only.hpp>

int main() {
  printf("Hello world!\n");

  header_only();
  source_files();

  return 0;
}
