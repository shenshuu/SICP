#lang sicp
(define (square x)
  (* x x))

(define (smallest-divisor n)
  (define (next n)
    (if (= n 2)
        3
        (+ n 2)))
  (define (test divisor)
    (cond ((> (square divisor) n) n)
      ((= (remainder n divisor) 0) divisor)
      (else (test (next divisor)))))
  (test 2))

(define (smallest-divisor1 n)
  (define (test divisor)
    (cond ((> (square divisor) n) n)
      ((= (remainder n divisor) 0) divisor)
      (else (test (+ divisor 1)))))
  (test 2))

(define (prime? n)
  (= (smallest-divisor n) n))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m)) m))
        (else
         (remainder (* base (expmod base (- exp 1) m)) m))))
        
(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ (random (- n 1)) 1)))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (fast-prime? n 10)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes lo hi)
  (if (even? lo)
      (search-for-primes (+ lo 1) hi)
      (cond ((> lo hi)
             (newline) (display "done!"))
            (else
             (timed-prime-test lo)
             (search-for-primes (+ lo 2) hi)))))

;(search-for-primes 1000 1090)
(timed-prime-test 1009)
(timed-prime-test 1013)
(timed-prime-test 1019)
(timed-prime-test 10007)
(timed-prime-test 10009)
(timed-prime-test 10037)
(timed-prime-test 100003)
(timed-prime-test 100019)
(timed-prime-test 100043)
(timed-prime-test 1000003)
(timed-prime-test 1000033)
(timed-prime-test 1000037)
(newline)
(fast-prime? 19999 6)