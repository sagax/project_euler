// rustc 1.1.0
// rustc 1.9.0
// rustc 1.35.0
// rustc 1.42.0

fn main() {
    let mut summ = 0;
    for item in 0..1000 {
        if item % 3 == 0 || item % 5 == 0 {
            summ += item;
        }
    }

    print!("{}", summ);
}
