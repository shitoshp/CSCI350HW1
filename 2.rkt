;Function to find sum of numbers not in nested list in a list L
(DEFINE (sum-up-numbers-simple L)
        (COND
         ((NULL? L) 0)
         ((NUMBER? (CAR L))  (+ (CAR L) (sum-up-numbers-simple (CDR L))))
         )
)