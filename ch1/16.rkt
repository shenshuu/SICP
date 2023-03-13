(define (even? x)
  (= (remainder x 2) 0))

(define (square x)
  (* x x))

(define (exp b n)
  (define (exp-iter acc count)
    (cond ((= count 1) acc)
          ((= n 0) 1)
          ((even? count) (exp-iter (* (square b) acc) (/ count 2)))
          (else (exp-iter (* acc b) (- count 1)))))
  (exp-iter 1 n))