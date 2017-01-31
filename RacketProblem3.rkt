#lang racket

; Racket Problem Sheet

; Problem Three

; Define a function grcomdiv that takes two integers and returns their greatest common
; divisor.

; min function returns the smaller number
(define (min x y)
  (if(< x y)
     x
     y)
)

; function to return the larger number
(define (max x y)
  (if(> x y)
     x
     y)
)

; function to return the greatest common divisor
(define (grcomdiv a b)
  (if ( = (modulo (max a b) (min a b)) 0)
      (min a b)
      (grcomdiv (min a b) (modulo (max a b) (min a b)))
  ))

(grcomdiv 108 30)
  