# Intro
Minimal example trying to demonstrate an issue when several rust static libraries are linked.

# How to run
Execute the provided shell scripts in order.

# Description
This example is composed of several projects in C/Rust that depends on each other in this sequence:  
`rust_end_user` -> `rust_wrap` -> `c_lib` -> `rust_lib`

* `rust_lib`:
    * Rust project generating a C style static library
    * Exposes a function `rust_add`
* `c_lib`
    * C static library which is using `rust_lib`
    * Exposes a function `c_add` which is calling `rust_add`
* `rust_wrap`
    * Rust wrapper around `c_lib`
    * Exposes a function `wrap_add` which is calling `c_add`
* `rust_end_user`
    * An "end user application" that is using `rust_wrap` as a dependency in the rust project
    * Calls `wrap_add`

# Expected result

* `rust_lib`:
    * Run binary: OK
    * Run unit test: OK
    * Run integration test: OK
    * Run example: OK
* `c_lib`
    * Run binary: OK
* `rust_wrap`
    * Run binary: OK
    * **Run unit test: NOK**
        * Link error about several symbols defined multiple times (`__rust_alloc`, `__rust_dealloc`, `__rust_no_alloc_shim_is_unstable`, etc.)
        * If the `--allow-multiple-definition` is provided to the linker, it works
    * Run integration test: OK
    * Run example: OK
* `rust_end_user`
    * Run binary: OK
    * Run unit test: OK
    * Run integration test: OK
    * Run example: OK
