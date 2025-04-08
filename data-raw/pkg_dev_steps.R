# Adhere to this strategy: https://rstudio.github.io/cheatsheets/html/package-development.html

# 1) document functions and objects
devtools::document()

# 2) build package
devtools::build()

# 3) test package
devtools::test()

# 4) install package
devtools::install(pkg = ".")

# 5) restart R
.rs.restartR()

# 6) load package
library(elements)

# 7) check the package
devtools::check(document = FALSE)
