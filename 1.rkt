(DEFINE (reverse-general L)
        (IF (NULL? L)
            L
            (append (reverse-general (CDR L)) (IF (LIST? (CAR L))
                                                  (reverse-general (CAR L))
                                                  (list (CAR L))))
        )
)