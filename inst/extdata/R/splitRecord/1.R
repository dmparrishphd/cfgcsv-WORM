splitRecord <- function ( X ) {
    FIELDS <- as.matrix ( X [ X [[ 2 ]] != "define"  , -1 ] )
    rownames ( FIELDS ) <- NULL
    list (
        FIELDS = FIELDS ,
        DEFS = extractDefs ( X ) ,
        RECORD = X [ 1 , 1 ] ) }
