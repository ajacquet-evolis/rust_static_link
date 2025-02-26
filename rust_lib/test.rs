use rust_lib;

#[test]
fn test_wrap() {
    assert_eq!(rust_lib::rust_add(200, 55), 255);
}