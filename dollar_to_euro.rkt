;;dollar_to_euro.rkt
#lang racket
(define input
	(command-line 
		#:args (dollar)
	dollar))

(define (convert input)
  (* (string->number input) 0.85))

(convert input)