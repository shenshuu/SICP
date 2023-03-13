(define (even? x)
  (= (remainder x 2) 0))

(define (halve x)
  (/ x 2))

(define (double x)
  (+ x x))

(define (* a b acc)
  (cond ((= b 0) acc)
        ((even? b) (* (double a) (halve b) acc))
        (else (* a (- b 1) (+ acc a)))))