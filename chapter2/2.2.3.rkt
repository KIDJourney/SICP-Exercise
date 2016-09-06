#lang scheme
(provide accumulate)
(provide enumerate-tree)

(define square (lambda (x) (* x x)))
(define (sum-odd-squares tree)
  (cond ((null? tree) 0)
        ((not (pair? tree))
         (if (odd? tree)
             (square tree)
             0))
        (else (+ (sum-odd-squares (car tree))
                 (sum-odd-squares (cdr tree))))))

(define (fib k)
  (define (fib-inner a b counter)
    (if (= counter 0)
        a
        (fib-inner b (+ a b) (- counter 1))))
  (fib-inner 0 1 k))
 
(define (even-fibs n)
  (define (next k)
    (if (> k n)
        '()
        (let ([f (fib k)])
          (if (even? f)
              (cons f (next (+ k 1)))
              (next (+ k 1))))))
  (next 0))

(define (filter predicate sequence)
  (cond ((null? sequence) '())
        ((predicate (car sequence))
         (cons (car sequence)
               (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (enumerate-interval low height)
  (if (> low height)
      '()
      (cons low (enumerate-interval (+ 1 low) height))))


(define (enumerate-tree tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (list tree))
        (else (append (enumerate-tree (car tree))
              (enumerate-tree (cdr tree))))))

(define (sum-odd-squares2 tree)
  (accumulate +
              0
              (map square
                   (filter odd?
                           (enumerate-tree tree)))))

(define (product-of-squares-of-odd-elements sequence)
  (accumulate *
               1
               (map square
                    (filter odd? (enumerate-tree sequence)))))

(define (even-fibs2 n)
  (accumulate cons
              '()
              (filter even?
                      (map fib
                           (enumerate-interval 0 n )))))


(define (listfib-squares n)
  (accumulate cons
              '()
              (map square
                   (map fib
                        (enumerate-interval 0 n)))))
