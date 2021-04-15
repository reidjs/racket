#lang racket
;Exercise 9.5.3.   Develop the function dollar-store?, which consumes a list of prices (numbers) and checks whether all of the prices are below 1.

(define (dollar-store? items)
  (cond 
    [(empty? items) #t]
    [(< (first items) 1) (dollar-store? (rest items))]
    [else #f]
  )
)

; Generalize the function so that it consumes a list of prices (numbers) and a threshold price (number) and checks that all prices in the list are below the threshold.  

(define (general-store? threshold items)
  (cond 
    [(empty? items) #t]
    [(< (first items) threshold) (general-store? threshold (rest items))]
    [else #f]
  )
)

; (displayln (dollar-store? empty))
(displayln (general-store? 1 empty))

; (displayln (not (dollar-store? (cons .75 (cons 1.95 (cons .25 empty)))))

(displayln (general-store? 3 (cons 0.75 (cons 1.95 (cons 0.25 empty)))))

; (displayln (dollar-store? (cons .15 (cons .05 (cons .25 empty)))))
(displayln (general-store? .1 (cons .15 (cons .05 (cons .25 empty)))))

; (displayln (dollar-store? (cons .15 (cons .05 (cons 1.125 empty)))))
