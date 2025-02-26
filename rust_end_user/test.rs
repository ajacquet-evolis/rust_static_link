use rust_wrap;

#[test]
fn test_end_user() {
    assert_eq!(rust_wrap::wrap_add(200, 12), 212);
}