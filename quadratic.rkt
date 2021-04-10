#lang racket
;; quadratic ax2 + bx  + c = 0
;; consumes a b c and returns number of solutions
;; 2 solutions if b2 > 4ac
;; one solution if b2 = 4ac
;; no solution if b2 < 4ac

(define (how-many a b c)
  (cond 
  [(> (* b b) (*(* 4 a)c)) 2]
  [(= (* b b) (*(* 4 a)c)) 1]
  [(< (* b b) (*(* 4 a)c)) 0]
  )
)

(display (how-many 2 4 2))