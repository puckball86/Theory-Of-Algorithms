#lang racket

;==========================================================================================
;Used Originally to try work out solution:

;defining a list with all possible numbers
(define ttllist (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 25 50 75 100))

(define oprs(list '+ '- '* '/))


; Append list of numbers and operators
(define full-list (append ttllist oprs))
;defining a list of set number and all possible permutations = 720
(define setnums( list 100 50 25 10 2 1))
(permutations setnums)
;defining operators and all possibilities of 5
(define operators(list '+ '- '* '/))
(cartesian-product operators operators operators operators operators)

(cartesian-product setnums setnums operators)



; A randomised target number
(define rand (random 101 999))
(display rand)


;===========================================================================================
;Solution Attempt From here

(define nums null)

(define ops(list '+ '+ '+ '+ '+ '- '- '- '- '- '- '* '* '* '* '*  '/ '/ '/ '/ '/))


;Stack implementation: Push and pop list members onto the stack 
;reference: http://stackoverflow.com/questions/29244677/implementation-of-lifo-list-in-scheme
(define (calculate-RPN expr)
  (for/fold ([stack '()]) ([token expr])
    ;(printf "~a\t -> ~a~N" token stack) ; Uncomment to see workings, not recommended for long lists.
    (match* (token stack)
     [((? number? n) stk) (cons n stk)]
     [('+ (list x y stk ___)) (cons (+ x y) stk)]
     [('- (list x y stk ___)) (cons (- y x) stk)]
     [('* (list x y stk ___)) (cons (* x y) stk)]
     [('/ (list x y stk ___)) (if (= y 0)
                                (cons 0 stk)
                                (if (= x 0)
                                    (cons 0 stk)
                                    (cons (/ x y) stk)))]
     [(x stk) (error "calculate-RPN: Cannot calculate the expression:" 
                   (reverse (cons x stk)))])))
 
;creating a stack
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




