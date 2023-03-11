(define (pascal-ele row col)
  (if (or (= row 0) (= col 0) (= row col))
      1
      (+ (pascal-ele (- row 1) (- col 1))
         (pascal-ele (- row 1) col))))