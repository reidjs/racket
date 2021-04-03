#lang racket
(define input
  (command-line
    #:args (pennies nickles dimes quarters)
    (list 
      (* 1 (string->number pennies)) 
      (* 5 (string->number nickles))
      (* 10 (string->number dimes))
      (* 25 (string->number quarters))
    ))
)

(printf "$~a\n" (exact->inexact (/ (for/sum ([i input]) i) 100)))