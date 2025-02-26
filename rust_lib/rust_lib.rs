#[no_mangle]
pub extern "C" fn rust_add(a: u8, b:u8) -> u8 {
    let r = a + b;
    println!("rust_add: {a} + {b} -> {r}");
    r
}

#[test]
fn rust_test() {
    assert_eq!(rust_add(78, 89), 167);
}