#lang racket
; takes in a list of fahrenheight temperatures
; returns list of celsius temps
(define (f->c f)
  (/ (* (- f 32) 5) 9)
)

(define (list-f->list-c list-f)
  (cond
    [(empty? list-f) empty]
    [else (cons (f->c (first list-f)) (list-f->list-c (rest list-f)))]
  )
)

(displayln (list-f->list-c (cons 32 (cons 212 empty))))