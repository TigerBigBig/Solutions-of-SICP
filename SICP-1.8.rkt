#lang sicp

(define (cube-root guess1 guess2 x)
(if (good-enough? guess1 guess2 x)
    guess2
    (cube-root guess2
               (improve guess2 x)
               x)))

(define (good-enough? guess1 guess2 x)
(if (< (/ (abs (- guess1 guess2)) guess2) 0.00000000000001)
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