#lang scheme
(define (sum-integers a b)
  (if (> a b)
      0
      (+ a (sum-integers (+ a 1) b))))

(define (cube x)
  (* x x x))

(define (sum-cubes a b)
  (if (> a b)
      0
      (+ (cube a) (sum-cubes (+ a 1) b))))

(define (pi-sum a b)
  (if ( > a b)
      0
      (+ (/ 1.0 ( * a ( + a 2))) (pi-sum (+ a 4) b))))

(define (pi-term a )
  (/ 1.0 ( * a ( + a 2))))

(define (pi-next a)
  (+ a 4))

(define (sum term a next b)
  (if ( > a b)
      0
      (+ (term a)
         (sum term (next a ) next  b))))

(define (sum-cubes2 a b)
  (define (cube x)(* x x x))
  (define (next x)(+ 1 x))
  (sum cube a next b))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a ( / dx 2.0)) add-dx b)
     dx))


