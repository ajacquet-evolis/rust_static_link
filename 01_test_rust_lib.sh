CARGO_OPTS="--quiet --manifest-path rust_lib/Cargo.toml --target-dir _build/rust_lib -- --nocapture"

echo "CARGO RUN (main)"
cargo run $CARGO_OPTS

echo "CARGO RUN (example)"
cargo run --example rust_lib_example $CARGO_OPTS

echo "CARGO TEST (lib)"
cargo test --lib $CARGO_OPTS

echo "CARGO TEST (test)"
cargo test --test rust_lib_test $CARGO_OPTS
