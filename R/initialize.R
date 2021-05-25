function ( path , R , args ) {

    `%//%` <- paste0

    stopifnot (
        is.character ( path ) ,
        length ( path ) == 1 )

    EX <- path %//% "/inst/extdata/"

    FUN <- source ( EX %//% "R/cfgcsvEnv/" %//% R %//% ".R" ) [[ 1 ]]

    args [[ "path" ]] <- path

    do.call ( FUN , args )
}
