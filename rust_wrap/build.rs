use std::process::Command;

fn main() {
    let _ = Command::new("bash").arg("02_test_c_lib.sh").current_dir("..").status().expect("failed to start command");

    println!("cargo::rustc-link-lib=static=c_lib");
    println!("cargo::rustc-link-search=native=../_build/c_lib");

    println!("cargo::rustc-link-lib=static=rust_lib");
    println!("cargo::rustc-link-search=native=../_build/rust_lib/debug");
}