interpretCSV <- function ( file ) {
    TABLE <- readCSV ( file )
    SPLIT1 <- split ( TABLE , TABLE [[ 1 ]] )
    SPLIT2 <- lapply ( SPLIT1 , splitRecord )
    lapply ( X = SPLIT2 , FUN = function ( X )
        resolve ( withSubstitutions ( X ) ) $ FIELDS ) }
