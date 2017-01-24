;Function to reverse a list and its sublists
(DEFINE (reverse-general L)
        (COND
         ((NULL? L) L)   ;if list is null, return the list as it is
          ;if the first element of the list a list too, recursively
          ;reverse the remaining part, and append the reverse of first part to last
         ((LIST? (CAR L))     
          (append (reverse-general (CDR L))
                  (LIST (reverse-general(CAR L)))
           )
          )
         ;else, if first part is an atom, take reverse of remaining and append that atom
         (ELSE
          (append (reverse-general (CDR L))
                  (list (CAR L)))
         )
         )
)