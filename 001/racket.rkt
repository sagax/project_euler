#lang racket

(define summ 0)

(for ([i (in-range 0 1000)])
 (when
  (or
   (= (remainder i 3) 0)
   (= (remainder i 5) 0))
  (set! summ (+ summ i))))

(print summ)
