#lang racket

; gets all of the combinations of list passed to it.
; maps all lists, taking out values from list to apply to + function
; filters out non 0 values and returns true if list is greater then 1. the empty set in apply + counts as a 0.
(define (subsetsum l)
  (> (length
   (filter
   zero?
  (map
   ; apply takes each value out of list. eg (+ 1 2 3) vs (+ (list 1 2 3))
   (lambda (i) (apply + i))
   (combinations l)))) 1))

(define L (list -10 -2 -4 9 5 8 6 1))

(subsetsum L)