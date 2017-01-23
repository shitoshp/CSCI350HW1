(DEFINE (reverse-general L)
        (IF (NULL? (CDR L))
            L
            (append (reverse-general (CDR L)) (LIST (CAR L)))
        )
)