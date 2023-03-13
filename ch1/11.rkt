(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(define (f n)
  (define (f-iter a b c count)
    (if (= count n)
        a
        (f-iter b c (+ (* 3 a) (* 2 b) c) (+ count 1))))
  (if (< n 3)
      n
      (f-iter 0 1 2 0)))