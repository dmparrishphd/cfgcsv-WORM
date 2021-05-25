substitution <- function ( X , i , j ) {
	CELL <- X $ FIELDS [ i , j ]
	im <- match ( CELL , X $ DEFS [[ 1 ]] )
    SUBSTITUTE <- X $ DEFS [ im , 2 ]
	if ( is.na ( im ) ) CELL else SUBSTITUTE }
