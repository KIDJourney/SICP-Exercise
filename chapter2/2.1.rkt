#lang scheme
(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (get-sign x)
  (if (< x 0)
      -1
      1))


(define (make-rat x y)
  (let ([temp (* (get-sign x) (get-sign y))])
    (cons (* temp (abs x)) (abs y) )))

(define (make-rat2 x y)
  (if (< y 0)
      (cons (- x) (- y))
      (cons x y)))