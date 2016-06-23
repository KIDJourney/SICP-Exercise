#lang scheme
(define (reverse items)
  (define (iter items answer)
    (if (null? items)
        answer
        (iter (cdr items) (cons (car items) answer))))
  (iter items `()))

(define (deep-reverse items)
  (cond 
        ((not (pair? items)) items)
        (else (reverse (cons (deep-reverse (car items)) (deep-reverse (cdr items)))))))