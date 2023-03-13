; applying normal order evaluation... 
(define (gcd a b)
    (if (= b 0)
        a 
        (gcd b (remainder a b))))

(gcd 206 40)
-> (gcd 40 (remainder 206 40))
-> (gcd (remainder 206 40) (remainder 40 (remainder 206 40)))
-> (gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
-> (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))

; remainder is called 18 times in normal order evaluation
; remainder is called 4 times in applicative order evaluation 