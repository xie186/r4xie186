#####################################################
## https://stackoverflow.com/questions/20241065/r-barplot-wrapping-long-text-labels
## There is one possible solution presented by Marc Schwartz in his post to R-help:
## Core wrapping function
wrap.it <- function(x, len){
  sapply(x, function(y) paste(strwrap(y, len),
                              collapse = "\n"),
         USE.NAMES = FALSE)
}

# Call this function with a list or vector
wrap.labels <- function(x, len){
  if (is.list(x)){
    lapply(x, wrap.it, len)
  } else {
    wrap.it(x, len)
  }
}
