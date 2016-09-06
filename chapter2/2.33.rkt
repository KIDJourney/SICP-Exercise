#lang scheme
(require "2.2.3.rkt")

(define (square x)
  (* x x))
(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) '() sequence))
(define (append seq1 seq2)
  (accumulate cons seq2 seq1))
(define (length sequence)
  (accumulate (lambda (x y)
                (if (null? x)
                    y
                    (+ 1 y))
                ) 0 sequence))