#lang scheme
(require "2.2.3.rkt")
(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms) (+ this-coeff (* x higher-terms)))
                0
                coefficient-sequence))