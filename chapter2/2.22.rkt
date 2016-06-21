#lang scheme
(define (square x)
  (* x x))


(define (reverse items)
  (define (iter items answer)
    (if (null? items)
        answer
        (iter (cdr items)
              (cons (car items) answer))))
  (iter items `()))


(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        (reverse answer)
        (iter (cdr things)
              (cons (square (car things))
                    answer))))
  (iter items `()))