#lang scheme
(define (accumulate-iterate combiner null-value term a next b ans)
  (if (> a b)
      (combiner ans null-value)
      (accumulate-iterate combiner null-value term (next a) next b (combiner (term a) ans))))
      

(define (acc-sum a b)
  (define (combiner a b)
    (+ a b))
  (define (term a)
    a)
  (define (next a)
    (+ 1 a))
  (accumulate-iterate combiner 0 term a next b 0))
