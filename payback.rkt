#lang racket
; payback.rkt

; xercise 4.4.3.   Some credit card companies pay back a small portion of the charges a customer makes over a year. One company returns

; .25% for the first $500 of charges,

; .50% for the next $1000 (that is, the portion between $500 and $1500),

; .75% for the next $1000 (that is, the portion between $1500 and $2500),

; and 1.0% for everything above $2500.

; Thus, a customer who charges $400 a year receives $1.00, which is 0.25 · 1/100 · 400, and one who charges $1,400 a year receives $5.75, which is 1.25 = 0.25 · 1/100 · 500 for the first $500 and 0.50 · 1/100 · 900 = 4.50 for the next $900.

; Determine by hand the pay-backs for a customer who charged $2000 and one who charged $2600.

(define (payback spent)
  (cond 
    [(<= spent 500) (spent-0-500 spent)]
    [(and (> spent 500) (<= spent 1500)) (spent-500-1500 spent)]
    [(and (> spent 1500) (<= spent 2500)) (spent-1500-2500 spent)]
    [(> spent 2500) (spent-gt-2500 spent)]
    
    ))

(define (spent-0-500 value)
  (* value (* 0.25 1/100)))

(define (spent-500-1500 value)
  (+ (* (- value 500) (* 0.5 1/100)) (spent-0-500 500)))

(define (spent-1500-2500 value)
  (+ (* (- value 1500) (* 0.75 1/100)) (spent-500-1500 1500)))

(define (spent-gt-2500 value)
  (+ (* (- value 2500) (* 1 1/100)) (spent-1500-2500 2500)))


(payback 2600)