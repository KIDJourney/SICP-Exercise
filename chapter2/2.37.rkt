#lang scheme
(define (dot-product v w)
  (accumulate + 0 (map * v w)))