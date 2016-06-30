// go version go1.0.2

package main

import "fmt"

func main() {
    summ, a, b, c := 0, 0, 1, 0
    for c < 4000000 {
        c = a + b
        a, b = b, c
        if c%2 == 0 {
            summ += c
        }
    }
    fmt.Println(summ)
}
