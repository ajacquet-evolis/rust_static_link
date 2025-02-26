set -e

BUILD_DIR="_build/c_lib"
mkdir -p $BUILD_DIR

# build rust lib
cargo run --manifest-path rust_lib/Cargo.toml --target-dir _build/rust_lib

# build C lib
gcc -c -o $BUILD_DIR/c_lib.o c_lib/c_lib.c
ar rcs $BUILD_DIR/libc_lib.a $BUILD_DIR/c_lib.o

# build and run C executable
gcc -o $BUILD_DIR/main c_lib/main.c c_lib/c_lib.c -L_build/rust_lib/debug -l:librust_lib.a
./$BUILD_DIR/main