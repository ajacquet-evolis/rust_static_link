#include <stdio.h>

#include "c_lib.h"
#include "../rust_lib/rust_lib.h"

uint8_t c_add(uint8_t a, uint8_t b) {
    uint8_t r = rust_add(a, b);
    printf("c_add: %d + %d -> %d\n", a, b, r);
    return r;
}
