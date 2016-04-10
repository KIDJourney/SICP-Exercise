#lang scheme
(require "1.37.rkt")
(define (n i) 1)
(define (d i)
  (if (= 2 (remainder i 3))
      ( * 2 ( + 1(floor (/ i 3))))
      1
))