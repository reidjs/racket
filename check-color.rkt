#lang racket
;; one player picks colors for two squares called targets
;; other tries to guess which color assigned to which square (guesses)
;; first player responds with following answers
;; - perfect: first target equal to first guess, second target equl ato second guess
;; - onecoloratcorrectpos first guess equal to first or second equal
;; onecoloroccurs either guess is one of two targets
;; nothingcorrect otherwise
; (define set-colors (a b)

; )
; (define (colors-are-same color1 color2)
;   (if (= color1 color2) #t #f)
; )
(define (correct guess color)
  (string=? guess color)
)
(define (incorrect guess color)
  (if (string=? guess color) #f #t)
)
(define (perfect guess1 guess2 color1 color)
  (if (and (correct guess1 color1) (correct guess2 color2)) #t #f)
)

(define (check-colors color1 color2)
  (display "Player 2: guess the first color: ")
  (define guess1 (read-line))
  (display "Player 2: guess the second color: ")
  (define guess2 (read-line))
  ;; TODO: loop if wrong and return clues
  (perfect guess1 guess2 color1 color2)
)
(display "Player 1: enter the first color: ")
(define color1 (read-line))
(display "Player 1: enter the second color: ")
(define color2 (read-line))

(display (check-colors color1 color2))

; (provide set-colors check-colors)
