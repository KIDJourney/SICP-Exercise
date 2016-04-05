#lang scheme
(provide square even? average close-enough?)
(define (even? x)
  (= (remainder x 2) 0))

(define (square x)
  (* x x))


(define (average x y)
  (/ (+ x y) 2))

(define (abs x)
  (if (> x 0)
      x
      (- 0 x)))

(define (close-enough? x y)
  (< (abs (- x y)) 0.0001))