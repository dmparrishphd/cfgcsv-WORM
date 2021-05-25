withSubstitutions <- function ( X ) {
        X $ FIELDS [ , -1 ] <- substitutions ( X )
        X }
