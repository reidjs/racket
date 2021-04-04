#lang racket
(define pi 3.1415)

(define input
	(command-line 
		#:args (radius height)
	(list (string->number radius) (string->number height))))

(define r
  (first input))

(define h
  (second input))

(define volume
  (* (* pi (* r r)) h)
)

(println volume)
