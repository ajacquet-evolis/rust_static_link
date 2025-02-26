use rust_wrap;

fn main() {
    println!("RUST END USER MAIN");
    assert_eq!(rust_wrap::wrap_add(50, 77), 127);
    println!();
}

#[test]
fn test_end_user() {
    assert_eq!(rust_wrap::wrap_add(9, 16), 25);
}