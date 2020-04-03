// go version go1.0.2
// go version go1.4.3
// go version go1.12.5

package main

import "fmt"

func main() {
    summ := 0
    for item := 0; item < 1000; item++ {
        if item%3 == 0 || item%5 == 0 {
            summ += item
        }
    }
    fmt.Printf("%d", summ)
}
