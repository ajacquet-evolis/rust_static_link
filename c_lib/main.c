#include <stdio.h>

#include "c_lib.h"

int main() {
    printf("C LIB MAIN\n");
    uint8_t r = c_add(5, 22);
    printf("\n");
    return r == 27;
}