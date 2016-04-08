#lang scheme

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