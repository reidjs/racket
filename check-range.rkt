#lang racket
; Exercise 9.5.4.   Develop the function check-range1?, which consumes a list of temperature measurements (represented as numbers) and checks whether all measurements are between 5oC and 95oC.

; (define (check-range1? temperatures)
;   (cond 
;     [(empty? temperatures) #t]
;     [else (and (>= (first temperatures) 5) (<= (first temperatures 95)) (check-range1? (rest temperatures))]
;   )
; )

; (displayln (check-range1? empty))
; (check-range1? (cons 6 empty))
; (displayln (check-range1? (cons 6 (cons 99 empty))))
; (disp`layln (check-range1? (cons 6 (cons 55 empty))))
