#lang racket
(define input
	(command-line 
		#:args (fahrenheit)
	fahrenheit))

(define (formatted input)
  (string->number input))

(/ (* (- (formatted input) 32) 9) 5)
