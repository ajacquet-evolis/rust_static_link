CARGO_OPTS="--quiet --manifest-path rust_end_user/Cargo.toml --target-dir _build/rust_end_user -- --nocapture"

echo "CARGO RUN (main)"
cargo run $CARGO_OPTS

echo "CARGO RUN (example)"
cargo run --example rust_end_user_example $CARGO_OPTS

echo "CARGO TEST (bin)"
cargo test --bin rust_end_user $CARGO_OPTS

echo "CARGO TEST (test)"
cargo test --test rust_end_user_test $CARGO_OPTS
