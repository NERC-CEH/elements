#' Initiliase a connection to the filehash database containing the Ecological Niche Models (ENMs)
#' 
#' @param models One of "all", "test", or NULL, indicating whether the complete set of models should be loaded, or the test set of models. NULL by default, which loads all models.
#'
#' @returns A connection to the filehash database containing the ENMs in an environment named elementsEnv within the parent environment.
#' @export
#'
#' @examples
#' elements::startup()
startup <- function(models = NULL){
  
  elementsEnv <<- new.env(parent = parent.frame())
  
  invisible({
    
    if((isTRUE(is.null(models)) | isTRUE(models == "all")) & file.exists(system.file("extdata", "Models", package = "elements"))){
      
      assign(x = "Models",
             value = filehash::dbInit(system.file("extdata", "Models", package = "elements")),
             envir = elementsEnv)
      
    } else if(isTRUE(models == "test") | !file.exists(system.file("extdata", "Models", package = "elements"))) {
      
      assign(x = "Models",
             value = filehash::dbInit(system.file("testdata", "TestModels", package = "elements")),
             envir = elementsEnv)
      
    }
    
  })
  
  cat("elements startup completed.")
  
}
