function ( path , collate = 1 ) {

    `%//%` <- paste0

    stopifnot (
        is.character ( path ) ,
        length ( path ) == 1 )

    EX <- path %//% "/inst/extdata/"

    COLLATE <- read.csv (
        EX %//% "Collate/" %//% collate %//% ".csv" ,
        stringsAsFactors = FALSE )

    Environments <- ( function () {
        E <- list()
        E [[  "internal" ]] <- new.env ( parent = as.environment("package:stats") )
        E [[ "interface" ]] <- new.env ( parent =   E [[ "internal" ]] )
        E } ) ()

    n <- nrow ( COLLATE )

    for ( i in seq_len ( n ) ) source (
        file = path %//% "/" %//% COLLATE [ i , "PATH" ] ,
        local = Environments [[ COLLATE [ i , "WHERE" ] ]] )

    for ( i in seq_along ( Environments ) )
    for ( Name in ls ( Environments [[ i ]] ) )
    if ( is.function ( Environments [[ i ]] [[ Name ]] ) )
    environment ( Environments [[ i ]] [[ Name ]] ) <-
            Environments [[ "internal" ]]

    Environments [[ "interface" ]] }
