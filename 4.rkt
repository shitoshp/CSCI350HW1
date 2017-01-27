;helper function to find minimum value of list1
(DEFINE (list-minimum L)
        (COND
         ;null check
         ((NULL? L) L)
         ;if element is not a number, min of remaining list is minimum
         ((NOT (NUMBER? (CAR L))) (list-minimum (CDR L))) 
         ;if only 1 element remaining in list, it must be minimum
         ((NULL? (CDR L)) (CAR L))
         ;condition to avoid comparing number and non-number
         ((NOT (NUMBER? (list-minimum(CDR L)))) (CAR L))
         ;recursively compare first element with minimum of remaining
         ;if first element is small, it is minimum
         ((< (CAR L) (list-minimum (CDR L))) (CAR L))
         ;else, minimum of remaining list is minimum
         (ELSE (list-minimum (CDR L)))
         )
)

;function to remove non-numbers and numbers below min from list1
(DEFINE (remove-min list1 list2)
        (COND
         ((NULL? list1) list1)
         ((NOT (NUMBER? (CAR list1))) (remove-min (CDR list1)))
         
         )
)
        