#lang racket
;; It consumes three digits, starting with the least significant digit, 
;; followed by the next most significant one, and so on. The program produces the corresponding number
;; reverse the order of the digits
;; reverse 3 2 1 -> 123

(define input
	(command-line 
		#:args (one two three)
	(list one two three)))

(for ([i (reverse input)])
  (printf "~a" i))

