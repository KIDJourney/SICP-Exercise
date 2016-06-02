#lang scheme
(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))


(define one
  ((lambda (n) (lambda(f) (lambda (x) (f ((n f) x))))) (lambda (f) (lambda (x) x))))

(define two
  ( (lambda (n) (lambda(f) (lambda (x) (f ((n f) x)))))
    ((lambda (n) (lambda(f) (lambda (x) (f ((n f) x))))) (lambda (f) (lambda (x) x)))))