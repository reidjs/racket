#lang racket
; 2πrh+2πr2

(define pi 3.1415)

(define input
	(command-line 
		#:args (radius height)
	(list (string->number radius) (string->number height))))

(define 2pir
  (* (* pi 2 (first input))))

(define surface_area
  (+ (* 2pir (second input)) (* 2pir (first input))))

(println surface_area)