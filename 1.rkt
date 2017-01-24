(DEFINE (reverse-general L)
        (COND
         ((NULL? L) L)
         ((LIST? (CAR L)) (append (reverse-general (CDR L)) (LIST (reverse-general(CAR L)))))
         (ELSE  (append (reverse-general (CDR L)) (list (CAR L))))
        )
)