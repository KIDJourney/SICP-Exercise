#lang scheme
(define (product f a b ans)
  (if (> a b)
      ans
      (product f (+ a 1) b (* (f a) ans))))


(define (get-item i)
  (/ (* 2 (floor (/ (+ 2 i) 2.)))
     (+ 1 (* 2 ( floor (/ ( + i 1) 2.))))
  )
)