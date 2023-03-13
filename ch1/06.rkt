(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
    (else else-clause)))

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

; the problem with redefining the special-form "if" is that 
; it no longer becomes a special-form and now becomes a procedure.
; This new procedure will then try to evaluate its subexpressions
; before applying the main procedure, which in this case is "sqrt-iter". 
; When this happens, we will be stuck in an infinite loop. 