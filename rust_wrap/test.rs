use rust_wrap;

#[test]
fn test_wrap() {
    assert_eq!(rust_wrap::wrap_add(200, 55), 255);
}