#lang racket
; Exercise 3.3.4.   Develop the function area-pipe. It computes the surface area of a pipe, which is an open cylinder. The program consumes three values: the pipe's inner radius, its length, and the thickness of its wall.
(define pi 3.1415)

(define input
	(command-line 
		#:args (inner_radius len thickness)
	(list (string->number inner_radius) (string->number len) (string->number thickness))))

(display input)

