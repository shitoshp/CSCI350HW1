;helper function to find minimum value of a list
(DEFINE (list-minimum L)
        (COND
         ;null check
         ((NULL? L) #f)
         ;if element is not a number, min of remaining list is minimum
         ((NOT (NUMBER? (CAR L))) (list-minimum (CDR L))) 
         ;if only 1 element remaining in list, it must be minimum
         ((NULL? (CDR L)) (CAR L))
         ;recursively compare first element with minimum of remaining
         ;if first element is small, it is minimum
         ((< (CAR L) (list-minimum (CDR L))) (CAR L))
         ;else, minimum of remaining list is minimum
         (ELSE (list-minimum (CDR L)))
         )
)