#lang racket
;; one player picks colors for two squares called targets
;; other tries to guess which color assigned to which square (guesses)
;; first player responds with following answers
;; - perfect: first target equal to first guess, second target equl ato second guess
;; - onecoloratcorrectpos first guess equal to first or second equal
;; onecoloroccurs either guess is one of two targets
;; nothingcorrect otherwise
; (define set-colors (a b)

(define (correct guess color)
  (string=? guess color)
)
(define (incorrect guess color)
  (not (string=? guess color))
)
(define (perfect guess1 guess2 color1 color)
  (and (correct guess1 color1) (correct guess2 color2))
)
(define (one-correct guess1 guess2 color1 color2)
  (or (correct guess1 color1) (correct guess2 color2))
)
(define (color-occurs guess color1 color2)
  (or (correct guess color1) (correct guess color2))
)
(define (one-color-occurs guess1 guess2 color1 color2)
  (or (color-occurs guess1 color1 color2) (color-occurs guess2 color1 color2))
)

(define (check-colors color1 color2)
  (display "Player 2: guess the first color: ")
  (define guess1 (read-line))
  (display "Player 2: guess the second color: ")
  (define guess2 (read-line))
  ;; TODO: loop if wrong and return clues
  (cond
    [(perfect guess1 guess2 color1 color2) 'Perfect]
    [(one-correct guess1 guess2 color1 color2) 'OneColorAtCorectPosition]
    [(one-color-occurs guess1 guess2 color1 color2) 'OneColorOccurs]
    [else 'NothingCorrect]
  )
)

(define (play color1 color2)
  (let ([result (check-colors color1 color2)])
    (cond
    [(symbol=? result 'Perfect) (displayln "Well done!")]
    [(symbol=? result 'OneColorAtCorectPosition) (and (displayln "One color is correct") (play color1 color2))]
    [(symbol=? result 'OneColorOccurs) (and (displayln "One color occurs") (play color1 color2))]
    [else (and (displayln "Nothing correct") (play color1 color2))]
    )
  )
)

(display "Player 1: enter the first color: ")
(define color1 (read-line))
(display "Player 1: enter the second color: ")
(define color2 (read-line))
(play color1 color2)
