#lang scheme

(define (square x)
  (* x x))

(define (square-tree tree)
  (cond ((null? tree) `())
         ((not (pair? tree)) (square tree))
         (else (cons (square-tree (car tree))
                     (square-tree (cdr tree))))))


(define (tree-operator tree operator)
  (map operator tree))

(define (square2 tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (* tree tree))
        (else (cons (square2 (car tree))
                    (square2 (cdr tree))))))


(tree-operator
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)) square2)