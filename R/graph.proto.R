name.proto <- function(., envir = parent.frame()) {
  stopifnot(is.environment(.) ||
      (is.character(.) && is.environment(get(., envir))))
  if (is.environment(.)) {
    if (exists("..Name", ., inherits = FALSE))
      .$..Name
    else {
      L <- unlist(eapply(envir, identical, .))
      if (any(L))
        names(L[L])[1]
      else
        gsub("^.* |>$", "", utils::capture.output(print.default(.))[[1]])
    }
  } else {
    e <- get(., envir)
    if (exists("..Name", e, inherits = FALSE))
      e$..Name
    else
      .
  }
}
