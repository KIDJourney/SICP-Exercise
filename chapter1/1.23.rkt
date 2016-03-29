#lang scheme
(require "common.rkt")
(define (fast-smallest-divisor n)
  (find-divisor n 2))


(define (find-divisor n test-divisor)
  (display test-divisor)
  (newline)
  (cond ((> (square test-divisor) n) n)
        ((divides? n test-divisor) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (divides? a b)
  (= (remainder a b) 0))

(define (next n)
  (if (even? n)
      (+ 2 n)
      (+ 1 n)
  ))