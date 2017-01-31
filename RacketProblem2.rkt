#lang racket

; Racket Problem Sheet

; Problem Two
; Define a procedure discount that takes two arguments: an item’s initial price and a
; percentage discount. It should return the new price.

(define (discount p d)
  (- p (* p (/ d 100))))

(discount 10.0 5.0)

(discount 29.90 50)