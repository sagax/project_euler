// rustc 1.1.0 (35ceea399 2015-06-19)
// rustc 1.9.0 (e4e8b6668 2016-05-18)

fn main() {
    let mut summ = 0;
    for item in 0..1000 {
        if item % 3 == 0 || item % 5 == 0 {
            summ += item;
        }
    }

    println!("{}", summ);
}

