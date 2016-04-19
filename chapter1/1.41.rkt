#lang scheme
(define (double foo)
  (lambda (x) (foo ( foo x))))
(define (inc x)
  (+ 1 x))