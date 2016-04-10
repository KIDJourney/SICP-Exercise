#lang scheme
(provide cont-frac cont-frac2)

(define (cont-frac n d k step)
  (if (> step k)
      (+ (d step) (/ (n step) (d step)))
      (+ (d step) (/ (n step) (cont-frac n d k (+ 1 step))))))


(define (cont-frac2 n d k)
  (define (cf step)
    (if (= step k)
        (+ (d step) (/ (n step) (d step)))
        (+ (d step) (/ (n step) (cf (+ 1 step)))))
        )
  (cf 1))

(define (cont-frac3 n d k)
  (define (cf ans step)
    (if (> step k)
        ans
        (cf (+ (d step) (/ (n step) ans)) (+ step 1))))
  (cf (+ (d k) (/ (n k) (d k))) 2))
      