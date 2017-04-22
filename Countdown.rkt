#lang racket
;Define a random number as a target
(define (rand) (displayln(random 101 999)))

(define trgtNum(rand))
trgtNum

(define start (list -1 -1 -1 -1 1 1 1 1))

(define per (remove-duplicates (permutations start)))

(define nums( list 100 50 25 10 2 1))
(permutations nums)
(define ops(list '+ '- '* '/))
(cartesian-product ops ops ops ops ops)




