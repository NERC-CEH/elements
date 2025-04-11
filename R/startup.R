#' Initiliase a connection to the filehash database containing the Ecological Niche Models (ENMs)
#'
#' @returns A connection to the filehash database in the global environment containing the ENMs
#' @export
#'
#' @examples
#' elements::startup()
startup <- function(){
  
  invisible({
    .GlobalEnv$Models <- filehash::dbInit(system.file("extdata", "Models", package = "elements"))
  })
  
}
