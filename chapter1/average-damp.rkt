#lang scheme
(require "common.rkt")
(require "fixed_point.rkt")
(provide newtons-method)
(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (sqrt x)
  (fixed-point (average-damp(lambda (y) (/ x y)))
               1.0))

(define (cube-root x)
  (fixed-point (average-damp (lambda (y) (/ x (square y))))
               1.0))

(define (deriv g)
  (let ((dx 0.00001))
  (lambda (x)
    (/ (- (g ( + x dx)) (g x))
       dx))))

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) (( deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))


(define (sqrt2 x)
  (newtons-method (lambda (y) (- (square y) x))
                  1.0))

(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))

(define (sqrt3 x)
  (fixed-point-of-transform (lambda (y) (/ x y))
                            average-damp
                            1.0))
