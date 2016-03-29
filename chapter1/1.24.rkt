#lang scheme
(require "smallest_divisor.rkt")
(require "common.rkt")
(define (timed-prime-test n)
  (newline)
  (display n)
  (newline)
  (start-prime-test n (current-milliseconds)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime(- (current-milliseconds) start-time))
      (smallest-divisor n)
))

(define (report-prime elapsed-time)
  (display " ***")
  (display elapsed-time))



(define (search-for-primes start end)
  (if (> start end)
      (display "Finished")
      (begin (timed-prime-test start)
       (search-for-primes (+ start 2) end))
))

(define (search-it start end)
  (if (even? start)
      (search-for-primes (+ start 1) end)
      (search-for-primes start end)))

