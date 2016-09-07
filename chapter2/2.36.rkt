#lang scheme
(require "2.2.3.rkt")
(provide accumulate-n)
(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      '()
      (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs))))) 