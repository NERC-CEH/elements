# Adhere to this strategy: https://rstudio.github.io/cheatsheets/html/package-development.html

# 1) document functions and objects
devtools::document()

# 2) build package
devtools::build(vignettes = FALSE)

# 3) test package
devtools::test()

# 4) check the package
devtools::check(document = FALSE)

# 5) install package
devtools::install(pkg = ".")

# 6) restart R
.rs.restartR()

# 7) load package
library(elements)

# 8) Build package manual
# devtools::build_manual(pkg = ".", path = ".")

# 9) Build vignettes
pkgdown::build_articles()

# 10) Build pkgdown website
pkgdown::build_site(examples = FALSE, install = FALSE)

# 11) Manually deploy website
pkgdown::deploy_to_branch()
