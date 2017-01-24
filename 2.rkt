;Function to find sum of numbers not in nested list in a list L
(DEFINE (sum-up-numbers-simple L)
        (IF (NULL? L)
            0
            (+ (CAR L) (sum-up-numbers-simple (CDR L)))
         )
)