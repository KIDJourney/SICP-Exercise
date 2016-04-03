#lang scheme
(define (accumulate-recursion combiner null-value term a next b)
  (if ( > a b )
      null-value
      (combiner (term a)
                (accumulate-recursion combiner null-value term (next a) next b))))


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

(define (acc-product a b)
  (define (combiner a b)
    (* a b))
  (define (term i)
    (/ (* 2 (floor (/ (+ 2 i) 2.)))
     (+ 1 (* 2 ( floor (/ ( + i 1) 2.))))
     )
  )
  (define (next a)
    (+ 1 a))
  (accumulate-recursion combiner 1 term a next b))