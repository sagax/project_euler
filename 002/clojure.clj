;clojure-1.7.0
;clojure-1.8.0

(def summ 0)
(def a 0)
(def b 1)
(def c 0)
(while (< c 4000000)
  (def c (+ a b))
  (def a b)
  (def b c)
  (if (== (mod c 2) 0)
    (def summ (+ summ c))
    )
  )
(println summ)
