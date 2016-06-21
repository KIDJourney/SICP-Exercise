#lang scheme
(define (foreach action items)
  (define (iter items)
    (if (null? items)
        #t
        (begin
          (action (car items))
          (iter (cdr items)))))
  (iter items))
          