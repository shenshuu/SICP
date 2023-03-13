#lang sicp
(define (square x)
  (* x x))

(define (smallest-divisor n)
  (define (test divisor)
    (cond ((> (square divisor) n) n)
      ((= (remainder n divisor) 0) divisor)
      (else (test (+ divisor 1)))))
  (test 2))

(define (prime? n)
  (= (smallest-divisor n) n))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
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

;(search-for-primes 1000000 1000090)
;(timed-prime-test 1009)
;(timed-prime-test 10007)
;(timed-prime-test 100003)
;(timed-prime-test 1000003)