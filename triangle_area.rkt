#lang racket
(define input
	(command-line 
		#:program "compiler"
		#:args (side height)
	(list (string->number side) (string->number height))))
;; b * h / 2
(/ (* (first input) (second input)) 2)