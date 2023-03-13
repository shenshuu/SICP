#lang sicp
(define (even? n)
  (= (remainder n 2) 0))

(define (square x)
  (* x x))

(define (expmod base exp n)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) n))
                    n))
        (else
         (remainder (* base (expmod base (- exp 1) n))
                    n))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ (random (- n 1)) 1)))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(fast-prime? 561 1000)
(fast-prime? 1105 1000)
(fast-prime? 1729 1000)
(fast-prime? 2465 1000)
(fast-prime? 2821 1000)
(fast-prime? 6601 1000)