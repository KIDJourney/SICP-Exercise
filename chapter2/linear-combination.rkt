#lang scheme

(define (linear-combination a b x y)
  (+ ( * a x ) ( * b y)))

(define (make-rat x y)
  (cons x y))

(define (numer num)
  (car num))
(define (denom num)
  (cdr num))

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (print-rat x )
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))
  

(define (sub rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (* (numer x) (denom y))
            (* (denom x) (numer y)))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))
