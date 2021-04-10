#lang racket/base

(require rackunit
  "./check-guess.rkt")

(check-equal? (check-guess 1 1) 'Perfect)
(check-equal? (check-guess 1 2) 'TooSmall)
(check-equal? (check-guess 2 1) 'TooLarge)
