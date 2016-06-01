#lang scheme
(define (cons x y)
  (* (expt 2 x)
     (expt 3 y)))

(define (car x)
  (define (count x)
    (if (= (modulo x 2) 0)
        (+ 1 (count (/ x 2)))
        0))
  (count x)
  )

(define (cdr x)
  (define (count x)
    (if (= (modulo x 3) 0)
        (+ 1 (count (/ x 3)))
        0))
  (count x))

(define (car1 z)
  (if (= (modulo z 2) 0)
      (+ 1 (car1 (/ z 2)))
      0))

(define (cdr1 z)
  (if (= (modulo z 3) 0)
      (+ 1 (cdr1 (/ z 3)))
      0))