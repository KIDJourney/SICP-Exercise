#lang scheme
(require "common.rkt")

(define (tan-cf x k step)
  (define (n i)
    (if (= i 1)
        x
        (-(square x))))
  (define (d i)
    ( + 1.0 (* 2 ( - i 1))))
    
  (if (> step k)
      (+ (d step) (/ (n step) (d step)))
      (+ (d step) (/ (n step) (tan-cf x k (+ 1 step)))))