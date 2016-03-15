#lang scheme
(define (floor n i)
  (if (or (= n i) (= i 1) (= n 1))
      1
      (+(floor (- n 1) i) (floor (- n 1) (- i 1)))))

(define (showtree n i height)
  (if (> n height)
      (display "Finished")
      (if (> i n)
          (begin (display "\n") (showtree (+ 1 n) 1 height))
          (begin (display (floor n i))
           (display " ")
           (showtree n (+ i 1) height)))))


(define (debug height)
  (showtree 1 1 height))
