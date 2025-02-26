extern "C" {
    fn c_add(a: u8, b: u8) -> u8;
}

pub fn wrap_add(a: u8, b: u8) -> u8 {
    let r = unsafe { c_add(a, b) };
    println!("wrap_add: {a} + {b} -> {r}");
    r
}


#[test]
fn test_wrap() {
    assert_eq!(wrap_add(7, 12), 19);
}