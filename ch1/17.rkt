(define (halve x)
  (/ x 2))

(define (double x)
  (+ x x))

(define (* a b)
  (cond ((= b 0) 0)
        ((even? b) (* (double a) (halve b)))
        (else (+ a (* a (- b 1))))))

; doing the math... (assuming b is even)
; a * b -> a * (2 * b/2) -> 2a * b/2
; so a' = 2a, b' = b/2 