(define (expmod base exp n)
    (remainder (fast-exp base exp) m))

; This method will require a large chunk of memory 
; as this algorithm doesn't compute intermediate results. 