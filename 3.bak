;Function to find sum of numbers not in nested list in a list L
(DEFINE (sum-up-numbers-simple L)
        (COND
         ((NULL? L) 0)     ;if list is null, sum is 0
         ((NUMBER? (CAR L))  ;if next element is a number, take sum of that element and recursively of remaining
              (+ (CAR L) (sum-up-numbers-simple (CDR L))))
         (ELSE      ;if it is not a number and not null, add 0 to sum, sum remains unchanged
              (+ 0 (sum-up-numbers-simple (CDR L))))
         )
)