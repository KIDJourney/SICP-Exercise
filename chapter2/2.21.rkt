#lang scheme
(require "table_map.rkt")

(define (square-list items)
  (if (null? items)
      `()
      (cons ((lambda (x) (* x x)) (car items)) (square-list (cdr items)))))

(define (square-list-map items)
  (map (lambda (x) (* x x)) items))