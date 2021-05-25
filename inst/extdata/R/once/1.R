once <- function ( file ) {

    # READ THE PATH TO THE CONTROL-FILE READER FROM THE CONTROL FILE
    TABLE <- read.csv ( file , stringsAsFactors = FALSE )

    # FIND THE "CTRL" RECORD
    RECORD <- TABLE [[ 1 ]] == "CTRL"

    # FIND THE "path" FIELD
    FIELD <- TABLE [[ 2 ]] == "cfgcsv"

    ROW <- RECORD & FIELD

    if ( sum ( ROW ) != 1 ) stop ( paste0 (
        'Exactly one row of the control file should have ',
        'GROUP == "CTRL" and NAME == "cfgcsvEnv"' ) )

    PATH <- TABLE [ RECORD & FIELD , 3 ]

    INITIALIZE <- paste0 ( PATH , "/R/initialize.R" )

    # `source` THE "1.R" FILE, WHICH RETURNS THE NEEDED ENVIRONMENT
    Env <- source ( INITIALIZE ) [[ 1 ]] (
        path = PATH ,
        R = "1" ,
        args = list ( collate = 1 ) )

    Env $ interpretCSV ( file ) }
