#' Remove the filehash database connection from the global environment
#'
#' @export
#'
#' @examples
#' elements::shutdown()
shutdown <- function(){
  
  suppressWarnings({
    suppressMessages({
      invisible({
        rm(Models, envir = .GlobalEnv)
      })
    })
  })
  
}
