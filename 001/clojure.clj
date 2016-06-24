;clojure-1.7.0
;clojure-1.8.0

(def summ 0)
(dotimes [x 1000]
  (if (or (== (mod x 3) 0) (== (mod x 5) 0))
    (def summ (+ summ x))
    )
  )
(println summ)
