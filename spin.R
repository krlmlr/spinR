library(knitr)
options(knitr.width=60)
render_markdown()
inline.hook.xspace <- function(...) { paste0(knitr:::.inline.hook.tex(...), '\\xspace') }
knit_hooks$set(inline=inline.hook.xspace)
stopifnot(length(commandArgs(TRUE)) == 2)
setwd(commandArgs(TRUE)[2])
spin(file.path("..", commandArgs(TRUE)[1]), report=F)
