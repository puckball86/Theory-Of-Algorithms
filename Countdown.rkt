#lang racket
;Define a random number as a target
(define (rand) (displayln(random 101 999)))

(define trgtNum(rand))
trgtNum

(define start (list -1 -1 -1 -1 1 1 1 1))

;Stack implementation: Push and pop items from the list 
;reference: http://stackoverflow.com/questions/29244677/implementation-of-lifo-list-in-scheme
(define (make-stack)
  (let ((stack '()))
    (lambda (msg . args)
      (cond 
        [(eq? msg 'pop!)  (set! stack (cdr stack))]
        [(eq? msg 'push!) (set! stack (append (reverse args) stack))]
        [(eq? msg 'stack) stack]
        [else "Not valid message!"]))))


(define per (remove-duplicates (permutations start)))

(define nums( list 100 50 25 10 2 1))
(permutations nums)
(define ops(list '+ '- '* '/))
(cartesian-product ops ops ops ops ops)




