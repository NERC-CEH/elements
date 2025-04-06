# To build package
pkgbuild::build()

# To document functions and objects
devtools::document()

# To check the package
devtools::check(document = FALSE)
