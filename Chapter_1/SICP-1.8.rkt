#lang sicp

(define (cube-root guess x)
(if (good-enough? guess x)
    guess
    (cube-root (improve guess x)
               x)))

(define (good-enough? guess x)
(if (< (/ (abs (- guess (improve guess x))) (improve guess x)) 0.00000000000001)
    #t
    #f
))

(define (improve guess x)
    (/
      (+
        (/ x
           (* guess guess))
        (* 2 guess))
      3)
)