#lang scheme
(define (reverse items)
  (if (null? (cdr items))
      (car items)
      (cons (reverse (cdr items)) (car items))))

(define (reverse2 items)
  (define (reverse-iter list ans)
    (if (null? list)
        ans
        (reverse-iter (cdr list) (cons (car list) ans))))
  (reverse-iter items (list))
  )
  