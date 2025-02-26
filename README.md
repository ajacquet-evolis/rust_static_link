# Intro
Minimal example trying to demonstrate an issue when several rust static libraries are linked.

# How to run
Execute the provided shell scripts in order.

# Description
This example is composed of several projects in C/Rust that depends on each other in this sequence:  
`rust_end_user` -> `rust_wrap` -> `c_lib` -> `rust_lib`

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
    * Run integration test: OK
    * Run example: OK
* `rust_end_user`
    * Run binary: OK
    * Run unit test: OK
    * Run integration test: OK
    * Run example: OK
