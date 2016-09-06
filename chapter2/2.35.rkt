#lang scheme
(require "2.2.3.rkt")

(define (fringe tree)
  (cond ((null? tree) '())
         ((not (pair? tree)) (list tree))
         (else (append (fringe (car tree))
                       (fringe (cdr tree))))))
          
(define (count-leaves t)
  (accumulate + 0 (map
                   (lambda (tree)
                     (if (pair? tree)
                         (count-leaves tree)
                         1))
                       t)))