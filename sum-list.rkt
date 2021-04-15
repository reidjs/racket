#lang racket
(define (sum a-list-of-nums)
  (cond
    [(empty? a-list-of-nums) 0]
    [else (+ (first a-list-of-nums) (sum (rest a-list-of-nums)))]
  )
)

(displayln (sum empty))
(displayln (sum (cons 1.00 empty)))
(displayln (sum (cons 1.00 (cons 2.4 empty))))