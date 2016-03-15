#lang scheme
(define (f n)
  (cond ((< n 3) n)
        (else (+
               (f (- n 1))
               (* 2 (f (- n 2)))
               (* 3 (f (- n 3)))))))


(define (f2-iter a b c count n)
  (if (< n 3)
      n
      (if (= count n)
          a
          (f2-iter b c (+ c (* 2 b) (* 3 a)) (+ 1 count) n))))

(define (f2 n)
  (f2-iter 0 1 2 0 n))
