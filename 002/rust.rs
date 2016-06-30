// rustc 1.1.0 (35ceea399 2015-06-19)
// rustc 1.9.0 (e4e8b6668 2016-05-18)

fn main() {
    let mut summ = 0;
    let mut a = 0;
    let mut b = 1;
    let mut c = 0;
    while c < 4000000 {
        c = a + b;
        a = b;
        b = c;
        if c % 2 == 0 {
            summ += c;
        }
    }
    println!("{}", summ);
}
