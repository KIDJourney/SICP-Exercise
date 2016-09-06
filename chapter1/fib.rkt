#lang scheme

(define (fib2 n)
  (let loop
    ((m 0)
     (k 1)
     (count n))
    (if (= count 0)
        m
        (loop k (+ m k) (- count 1)))))


