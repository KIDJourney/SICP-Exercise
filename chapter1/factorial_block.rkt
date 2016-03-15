#lang scheme

(define (factorial n)
  (define (fact-iter ans count maxcount)
    (if (> count maxcount)
        ans
        (fact-iter (* ans count)
                   (+ count 1)
                   maxcount)))
  
  (fact-iter 1 1 n))

  