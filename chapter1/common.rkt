#lang scheme
(provide square even?)
(define (even? x)
  (= (remainder x 2) 0))

(define (square x)
  (* x x))
