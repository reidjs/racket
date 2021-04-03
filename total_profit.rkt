#lang racket
(define ticket_price 5)

(define (performance_cost attendees)
  (+ 20 (* 0.5 attendees))
)

(define (total_profit attendees)
  (- (* ticket_price attendees) (performance_cost attendees))
)

(define input
  (command-line
    #:args (attendees)
    (string->number attendees)
  )
)

(total_profit input)
