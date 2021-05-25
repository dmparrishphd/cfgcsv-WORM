substitutions <- function ( X ) {
    FIELDS <- X $ FIELDS
    DIM <- dim ( FIELDS )
    I.COL.2.START <- 1L + nrow ( FIELDS )
    I.END <- prod ( DIM )
    MI <- arrayInd (
        I.COL.2.START : I.END ,
        DIM )
    SUBSTITUTIONS <- vapply (
        seq_len ( nrow ( MI ) ) ,
        FUN.VALUE = "" ,
        USE.NAMES = FALSE ,
        function ( i ) {
            row <- MI [ i , 1 ]
            col <- MI [ i , 2 ]
            substitution ( X , row , col ) } )
    SUBSTITUTIONS }
