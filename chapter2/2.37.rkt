#lang scheme
(require "2.2.3.rkt")
(require "2.36.rkt")

(define matrix (list (list 1 2 3 4) (list 3 4 5 6)))
(define vector (list 1 2 3 4))

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (martix-*-vector m v)
  (map (lambda (x) (dot-product x v)) m))

(define (transpose mat)
  (accumulate-n cons '() mat))

(accumulate cons '() (list 1 2 3 4))

(transpose matrix)