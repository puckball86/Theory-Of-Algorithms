#lang racket

;==========================================================================================
;Used Originally to try work out solution:

;defining a list with all possible numbers to games spec
(define ttllist (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 25 50 75 100))
(define oprs (list '+ '- '/ '*))

; Append list of numbers and operators
(define full-list (append ttllist oprs))
(display full-list)
(display "\n")

;defining a list of set number and all possible permutations = 720
(define setnums( list 100 50 25 10 2 1))
(define allnums (remove-duplicates (permutations setnums)))
;see all number permutations without duplicates
;(display allnums)


;defining operators and all possibilities of 5
(define op(list '+ '- '* '/))
(define allops(cartesian-product op op op op op))
;(display allops)


;display all numbers and all operators
;commented out because does not need to be ran
;(cartesian-product allnums allops)

; A randomised target number
(define rand (random 101 999))
(display rand)
(display "\n")


;===========================================================================================
;Solution Attempt From here

;empty list nums
(define nums null)
;all operators
(define ops(list '+ '+ '+ '+ '+ '- '- '- '- '- '- '* '* '* '* '*  '/ '/ '/ '/ '/))


;Stack implementation: Push and pop list members onto the stack 
;reference: http://stackoverflow.com/questions/29244677/implementation-of-lifo-list-in-scheme
(define (calculate-RPN expr)
  (for/fold ([stack '()]) ([token expr])
    ;(printf "~a\t -> ~a~N" token stack) ; Uncomment to see workings, not recommended for long lists.
    (match* (token stack)
     [((? number? n) s) (cons n s)]
     [('+ (list x y s ___)) (cons (+ x y) s)]
     [('- (list x y s ___)) (cons (- y x) s)]
     [('* (list x y s ___)) (cons (* x y) s)]
     [('/ (list x y s ___)) (if (= y 0)
                                (cons 0 s)
                                (if (= x 0)
                                    (cons 0 s)
                                    (cons (/ x y) s)))]
     [(x stk) (error "calculate-RPN: Cannot calculate the expression:" 
                   (reverse (cons x stk)))])))

;stack stk starting at 0
;Pass expression
;If next element is number increase stk by 1
;If next element is operand check if stk > 1
;If stk > 1 decrease r by 1 and move on
;if stk < 2 expression is not rpn-compatible

;check if rpn is workin this should = 48
;uncomment to check
;(calculate-RPN '(4 6 8 + 2 - * ))

(define (valid-rpn? e[stk 0])
  (if(null? e)
     (if (= stk 1)
         #t
         #f)
     (if(number? (car e) )
        (valid-rpn? (cdr e) (+ stk 1))
        (if(> stk 1)
           (valid-rpn? (cdr e) (- stk 1))
           #f))))

(valid-rpn?  (list 4 6 8 + 2 - * ))



