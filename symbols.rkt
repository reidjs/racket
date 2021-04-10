#lang racket
;; define symbols with one ' (quotation mark) before the name. 
;; similar to strings, but symbols are atomic. they cannot be broken down. 
(display(symbol=? 'hello 'hello))

