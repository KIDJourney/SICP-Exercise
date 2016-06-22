#lang scheme
(define x (list 1 3 (list 5 7) 9))
(define x1 (list (list 7)))
(define x2 (list 1 (list 2 (list 3 (list 4 ( list 5 ( list 6 7)))))))


(car (cdr (car (cdr ( cdr x )))))
(car (car x1))
(car (cdr ( car ( cdr (car (cdr (car (cdr (car (cdr (car (cdr x2))))))))))))