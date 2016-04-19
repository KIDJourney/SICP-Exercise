#lang scheme
(require "average-damp.rkt")
(define (cubic a b c)
  (lambda (x) (+ (* x x x)  (* a x x )  (* b x) c)))
