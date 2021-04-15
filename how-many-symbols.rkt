#lang racket
; consume a list of symbols and produces number of items in list

(define (how-many-symbols list)
  (cond 
    [(empty? list) 0]
    [else (+ 1 (how-many-symbols (rest list)))]
  )
)

(displayln (how-many-symbols (cons 'hi (cons 'bye (cons 3 empty)))))