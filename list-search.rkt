#lang rackets
(let ([l (cons 10 (cons 20 (cons 5 empty)))]) (rest l))
(let ([l (cons 10 (cons 20 (cons 5 empty)))]) (first (rest l)))
(let ([l (cons 10 (cons 20 (cons 5 empty)))]) (rest (rest l)))
(let ([l (cons 10 (cons 20 (cons 5 empty)))]) (first (rest (rest l))))
(let ([l (cons 10 (cons 20 (cons 5 empty)))]) (rest (rest (rest l))))