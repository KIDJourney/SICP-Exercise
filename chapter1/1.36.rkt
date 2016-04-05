#lang scheme
(provide fixed-point)
(require "common.rkt")
(define (fixed-point f first-guess)
  (define (try guess)
    (let ((next (f guess)))
      (display guess)
      (newline)
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(fixed-point (lambda (x) ( / (log 1000)  (log x))) 2)