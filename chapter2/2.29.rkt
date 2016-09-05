#lang scheme
(define (make-mobile left right)
  (list left right))

(define (mobile? item)
  (if (pair? item)
      (and (pair? (car item)) (pair? (cdr item)))
      #f))


(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  (cadr mobile))

(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (cadr branch))

(define (has-mobile? branch)
  (pair? (branch-structure branch)))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

(define (branch-weight branch)
  (if (has-mobile? branch)
      (total-weight (branch-structure branch))
      (branch-structure branch)))

(define mobile (make-mobile (make-branch 10 20)       ; 活动体的总重量为 20 + 25 = 45
                                  (make-branch 10 25)))

(define (branch-torque branch)
  (* (branch-length branch)
     (branch-weight branch)))

(define (same-torque? left right)
  (= (branch-torque left) ( branch-torque right)))

(define (branch-balance? branch)
  (if (has-mobile? branch)
      (mobile-balance? (branch-structure branch))
      #t))


(define (mobile-balance? mobile)
  (let ((left (left-branch mobile))
        (right (right-branch mobile)))
    (and
     (same-torque? left right)
     (branch-balance? left)
     (branch-balance? right))))
    

(total-weight mobile)