#lang sicp

(define (sqrt-iter g1 g2 x)
    (if (good-enough? g1 g2 x)
        g2
        (sqrt-iter g2
                    (improve g2 x)
                    x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? g1 g2 x)
    (if (< (/ (abs (- g1 g2)) g2) 0.00000000000000001)
        #t
        #f))