#lang racket

(define (inches->cm inches)
  (* 2.54 inches))
(define (feet->inches feet)
  (* 12 feet))
(define (yards->feet yards)
  (* 3 yards))
(define (rods->yards rods)
  (* 5.5 rods))
(define (furlongs->rods furlongs)
  (* 40 furlongs))
(define (miles->furlongs miles)
  (* 8 miles))
(define (feet->cm feet)
  (inches->cm (feet->inches feet)))
(define (rods->inches rods)
  (feet->inches (yards->feet (rods->yards rods))))
(define (miles->feet miles)
(yards->feet (rods->yards (furlongs->rods (miles->furlongs miles)))))

(provide inches->cm
  feet->inches
  yards->feet
  rods->yards
  furlongs->rods
  miles->furlongs
  feet->cm
  rods->inches
  miles->feet
  )