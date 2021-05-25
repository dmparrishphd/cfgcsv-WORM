#USAGE:
#       1. source THIS FILE WITH `source(filename)` (SEE `help(source)`).
#       2. CALL THE cfgcsvExample1 FUNCTION WITH THE PATH TO THE
#          DIRECTORY WHERE THE cfgcsv PACKAGE IS INSTALLED.

cfgcsvExample1 <- function ( pkgpath ) {
    # DEFINE A FILE PATH TO A FUNCTION THAT LOADS A cfgcsv ENVIROMENT.
    PATH <- paste0 ( pkgpath , "/inst/extdata/R/cfgcsvEnv/1.R" )
    # source THE FUNCTION, CALL IT WITH pkgpath
    Env <- source ( PATH ) [[ 1 ]] ( pkgpath )
    # DEFINE A FILE PATH TO AN EXAMPLE FILE.
    # (SEE ALSO cfgcsv/inst/extdata/man/html/cfgcsv.html)
    FILENAME <- paste0 ( pkgpath , "/inst/extdata/Examples/data/1.csv" )
    # CALL THE interpretCSV FUNCTION WITH THE EXAMPLE FILE NAME
    Env $ interpretCSV ( FILENAME ) }
