#lang scheme
(require "common.rkt")
(define (average-damp f)
  (lambda (x) (average x (f x))))