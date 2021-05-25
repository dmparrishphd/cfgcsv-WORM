resolve <- function ( X ) {
    FIELDS <- X $ FIELDS
    list (
        FIELDS = `names<-` (
            vapply (
                FUN.VALUE = "" ,
                USE.NAMES = FALSE ,
                X = seq_len ( nrow ( FIELDS ) ) ,
                FUN = function ( i ) collapse ( FIELDS [ i , -1 ] ) ) ,
            FIELDS [ , 1 ] ) ,
        RECORD = X [[ 1 ]] ) }
