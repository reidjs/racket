#lang racket
; ercise 4.4.1.   Develop the function interest. Like interest-rate, it consumes a deposit amount. Instead of the rate, it produces the actual amount of interest that the money earns in a year. The bank pays a flat 4% for deposits of up to $1,000, a flat 4.5% per year for deposits of up to $5,000, and a flat 5% for deposits of more than $5,000

;interest earned in a year
(define (interest deposit-amount)
  (cond 
    [(<= deposit-amount 1000) (* 1.04 deposit-amount)]
    [(<= deposit-amount 5000) (* 1.045 deposit-amount)]
    [(> deposit-amount 5000) (* 1.05 deposit-amount)]))

(interest 4999)