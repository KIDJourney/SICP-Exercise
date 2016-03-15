#lang scheme

(define (fib n)
  (define (fib-iter a b)
    (- n 1)
    (if (= n 0)
        a
        (fib-iter b (+ a b))))
  (fib-iter 0 1)
  )

(define (fib2 n)
  (let loop
    ((m 0)
     (k 1)
     (count n))
    (if (= count 0)
        m
        (loop k (+ m k) (- count 1)))))


