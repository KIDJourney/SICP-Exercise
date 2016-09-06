#lang scheme
(define (square x)
  (* x x))
(define (square-tree tree)
  (tree-map square tree))

(define (tree-map operator tree)
  (define (inner_map item)
    (cond ((null? item) '())
          ((not (pair? item)) (operator item))
          (else (cons (inner_map (car item))
                      (inner_map (cdr item))))))
  (inner_map tree))


(define my-tree (list 1 (list 2 (list 3 4) 5) (list 6 7 )))

(square-tree my-tree)