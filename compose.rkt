#lang racket 
;; revenue : number  ->  number
;; to compute the revenue, given ticket-price 
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

;; cost : number  ->  number
;; to compute the costs, given ticket-ticket-price
(define (cost ticket-price)
  (* 1.5 (attendees ticket-price)))

;; attendees : number  ->  number
;; to compute the number of attendees, given ticket-price
(define (attendees ticket-price)
  (if (= ticket-price 5) 120 (if (= ticket-price 4) 150 0)))

;; profit : number  ->  number
;; to compute the profit as the difference between revenue and costs
;; at some given ticket-price
(define (profit ticket-price) 
  (- (revenue ticket-price) (cost ticket-price)))


; given ticket price

(profit 5)
