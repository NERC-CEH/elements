#' Initiliase a connection to the filehash database containing the Ecological Niche Models (ENMs)
#' 
#' @param models One of "all", "test", or NULL, indicating whether the complete set of models should be loaded, or the test set of models. NULL by default, which loads all models.
#'
#' @returns A connection to the filehash database in the global environment containing the ENMs
#' @export
#'
#' @examples
#' elements::startup()
startup <- function(models = NULL){
  
  invisible({
    if((isTRUE(is.null(models)) | isTRUE(models == "all")) & file.exists(system.file("extdata", "Models", package = "elements"))){
      .GlobalEnv$Models <- filehash::dbInit(system.file("extdata", "Models", package = "elements"))
    } else if(isTRUE(models == "test") | !file.exists(system.file("extdata", "Models", package = "elements"))) {
      .GlobalEnv$Models <- filehash::dbInit(system.file("testdata", "TestModels", package = "elements"))
    }
  })
  
}
