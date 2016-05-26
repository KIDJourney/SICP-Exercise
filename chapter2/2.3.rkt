#lang scheme
(define (make-point x y)
  (cons x y))

(define (make-reactangle point-ld point-ru)
  (cons point-ld point-ru))

(define (get-ld-point reactangle)
  (car reactangle))

(define (get-ru-point reactangle)
  (cdr reactangle))

(define (get-acreage reactangle)
  (let ([ld-point (get-ld-point reactangle)]
        [ru-point (get-ru-point reactangle)])
    (* (- (car ru-point) (car ld-point))
       (- (cdr ru-point) (cdr ld-point)))))