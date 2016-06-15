#lang scheme
(define (same-parity origin . values)
  (define (check x)      
    ( = (modulo x 2) (modulo origin 2)))
  (define (get-ans values-list ans)
    (if (null? values-list)
        ans
    (if (check (car values-list))
        (get-ans (cdr values-list) (cons (car values-list) ans))
        (get-ans (cdr values-list) ans))))
    
  (get-ans values (list)))
    
        