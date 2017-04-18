#lang racket

(define l '(list a b))
(define ops'(+ - * /))
(define a 5)
(define b 25)
;(define t  125)

(define trgt(list (+ a b)
                  (- a b)
                  (* a b)
                  (/ a b)
                  (+ b a)
                  (- b a)
                  (* b a)
                  (/ b a)))



