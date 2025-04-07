# Adhere to this strategy: https://rstudio.github.io/cheatsheets/html/package-development.html

# 1) document functions and objects
devtools::document()

# 2) build package
devtools::build()

# 3) test package
devtools::test()

# 4) install package
devtools::install()

# 5) load package
library(elements)

# 6) check the package
devtools::check(document = FALSE)
