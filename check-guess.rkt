#lang racket
;; check-guess
;; consume guess and target
;; toosmall, perfect, or too large
(define (check-guess guess target)
  (cond
  [((< guess target) 'TooSmall)]
  [(> guess target) 'TooLarge]
  [(= guess target) 'Perfect]
  )
)

(provide check-guess)