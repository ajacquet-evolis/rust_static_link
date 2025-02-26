CARGO_OPTS="--quiet --manifest-path rust_wrap/Cargo.toml --target-dir _build/rust_wrap -- --nocapture"

echo "CARGO RUN (main)"
cargo run $CARGO_OPTS

echo "CARGO RUN (example)"
cargo run --example rust_wrap_example $CARGO_OPTS

echo "CARGO TEST (lib)"
cargo test --lib $CARGO_OPTS

echo "CARGO TEST (lib) with --allow-multiple-definition"
RUSTFLAGS="-Clink-arg=-Wl,--allow-multiple-definition" cargo test --lib $CARGO_OPTS 

echo "CARGO TEST (test)"
cargo test --test rust_wrap_test $CARGO_OPTS
