#lang scheme
(define (compose foo1 foo2)
  (lambda (x) (foo1 (foo2 x))))

(define (square x)
  (* x x))
(define (inc x)
  (+ x 1))