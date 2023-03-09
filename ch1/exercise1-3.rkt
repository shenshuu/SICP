(define (sum-squares x y)
  (+ (* x x) (* y y)))

(define (sum-of-squares-large x y z)
  (cond ((and (< x y) (< x z)) (sum-squares y z))
        ((and (< y z) (< y x)) (sum-squares x z))
        (else (sum-squares x y))))