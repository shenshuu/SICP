(define (p) (p))
(define (test x y)
    (if (= x 0)
        0
        y))
(test 0 (p))

; if we use applicative-order evaluation, we will 
; try to evaluate the subexpressions (operands) first before 
; applying them to the main procedure, which in this case 
; is "test". Upon evaluating (p), we see that it evaluates 
; to (p) which will cause us to be stuck in an infinite loop. 

; However, if we use normal-order evaluation we only evaluate 
; the subexpressions when we need them. Since our predicate in our 
; if clause is true, we only need to evaluate the first expression 
; which is 0 and not the one in the alternative expression. 