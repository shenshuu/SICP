when Louis rewrote his program without the square procedure
he changed the time complexity from O(logn) to O(n) because 
instead of making one function call which reduces the input 
size by half, he is now making two function calls that reduce 
the problem size by half. This means that f(n/2) + f(n/2) = f(n)
This is because functions use applicative order evaluation, 
i.e. the arguments are evaluated before we apply the main procedure.

(define (expmod base exp m)
    (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (* (expmod base (/ exp 2) m)
                       (expmod base (/ exp 2) m))))
        (else
         (remainder (* base (expmod base (- exp 1) m))))))