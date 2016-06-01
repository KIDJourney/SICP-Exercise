#lang scheme
(define (count x)
  (if (not (= x 0))
      (+ 1 (count (- x 1)))
      1))
