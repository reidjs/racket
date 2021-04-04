#lang racket/base

(require rackunit
  "./conversions.rkt")

(check-equal? (inches->cm 1) 2.54 "Inches to cm")
(check-equal? (feet->inches 1) 12 "Feet to inches")
(check-equal? (yards->feet 1) 3 "Yards to feet")
(check-equal? (rods->yards 1) 5.5 "Rods to yards")
(check-equal? (furlongs->rods 1) 40 "Furlongs to rods")
(check-equal? (miles->furlongs 1) 8 "Miles to furlongs")
(check-equal? (feet->cm 1) 30.48 "Feet to cm")
(check-equal? (rods->inches 1) 198.0 "Rods to inches")
(check-equal? (miles->feet 1) 5280.0 "Miles to feet")
