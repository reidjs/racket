#lang racket
(define (tax v)
  (* 0.15 v))

(define (netpay v)
   (- (* 12 v) (tax v)))

(define input
	(command-line 
    #:multi
    [("-t" "--tax") val
                    "Input total pay, returns tax owed"
                    (println (tax (string->number val)))]
    [("-p" "--net-pay") val
                    "Input number of hours worked, returns net pay"
                    (println (netpay (string->number val)))]
  ))

