proto <- function (. = parent.env(envir), expr = {}, envir = 
		new.env(parent = parent.frame()), ..., funEnvir = envir) {
    parent.env(envir) <- .
    as.proto.environment(envir)  # must do this before eval(...)
    # moved eval after for so that ... always done first
    # eval(substitute(eval(quote({ expr }))), envir)
    dots <- list(...); names <- names(dots)
    for (i in seq(length = length(dots))) { 
      assign(names[i], dots[[i]], env = envir)
      if (!identical(funEnvir, FALSE) && is.function(dots[[i]])) 
        environment(envir[[names[i]]]) <- funEnvir
    }
    eval(substitute(eval(quote({ expr }))), envir)
    if (length(dots)) as.proto.environment(envir) else envir
}

as.proto <- function(x, ...) UseMethod("as.proto")
as.proto.environment <- function(x, ...) {
	assign(".that", x, env = x)
	assign(".super", parent.env(x), env = x)
	structure(x, class = c("proto", "environment"))
}
as.proto.proto <- function(x, ...) x
as.proto.list <- function(x, envir, parent, all.names = FALSE, ..., 
	funEnvir = envir, SELECT = function(x) TRUE) {
       if (missing(envir)) {
		if (missing(parent)) parent <- parent.frame()
		envir <- if (is.proto(parent)) 
			parent$proto(...) 
		else 
			proto(parent, ...)
       }
       for(s in names(x))
          if (SELECT(x[[s]])) {
             assign(s, x[[s]], env = envir)
             if (is.function(x[[s]]) && !identical(funEnvir, FALSE)) 
		environment(envir[[s]]) <- funEnvir
          }
       if (!missing(parent)) parent.env(envir) <- parent
       as.proto.environment(envir)  # force refresh of .that and .super
}

# "$.proto" <- function(this, x) {
#    inh <- substr(x,1,2) != ".."
#    p <- parent.frame()
#    is.function <- is.function(get(x, env = this, inherits = inh))
#    is.that <- match(deparse(substitute(this)), c(".that",".super"), nomatch=0)
#    s <- if (is.function && !is.that)
#          substitute(function(...) get(x, env = this, inherits = inh)(this, ...))
#    else
#          substitute(get(x, env = this, inherits = inh))
#    res <- eval(s, list(inh = inh), p)
#    if (is.function && !is.that) environment(res) <- p
#    res
# }

"$<-.proto" <- function(this,s,value) { 
        if (s == ".super") parent.env(this) <- value
	if (is.function(value))  environment(value) <- this
	this[[as.character(substitute(s))]] <- value
	this
}

is.proto <- function(x) inherits(x, "proto")
isnot.function <- function(x) ! is.function(x)

#with.default seems to work just as well
#with.proto <- function(data, expr, ...)
#   eval.parent(substitute(eval(substitute(expr), data)))

"$.proto" <- function (this, x, args) {
    inh <- substr(x, 1, 2) != ".."
    p <- parent.frame()
    is.function <- is.function(get(x, env = this, inherits = inh))
    is.that <- match(deparse(substitute(this)), c(".that", ".super"), 
        nomatch = 0)
    s <- if (is.function && !is.that) 
        substitute(function(...) get(x, env = this, inherits = inh)(this, 
            ...))
    else substitute(get(x, env = this, inherits = inh))
    res <- eval(s, list(this = this, x = x, inh = inh), p)
    if (is.function && !is.that) {
        environment(res) <- p
        class(res) <- c("instantiatedProtoMethod", "function")
	attr(res, "this") <- this
	if (!missing(args)) res <- do.call(res, args, envir = p)
    }
    res
}

# modified from original contributed by Tom Short
print.instantiatedProtoMethod <- function(x, ...) {
  # cat("proto method call: ")
  # print(unclass(x))
  cat("proto method (instantiated with ", name.proto(attr(x, "this")), 
    "): ", sep = "")
  print(eval(body(x)[[1]]))
}

# contributed by Tom Short

# modified Tom Short
str.proto <- function(object, max.level = NA, nest.lev = 0,
    indent.str = paste(rep.int(" ", max(0, nest.lev + 1)), collapse = ".."),
    comp.str = "$ ", envir = baseenv(), ...) {
  cat("proto", name.proto(object), "\n")
  if (is.na(max.level) || nest.lev < max.level) {
    nam.ob <- ls(object)
    le <- length(nam.ob)
    if ((le) == 0) {nam.ob = " "; cat(indent.str, "empty\n")}
    max.ncnam <- max(nchar(nam.ob, type = "w"))
    nam.fmt <- format(nam.ob, width = max.ncnam, justify = "left")
    for (i in seq(len=le)) {
      cat(indent.str, comp.str, nam.fmt[i], ":", sep = "")
       envir <- if (typeof(object[[nam.ob[i]]]) == "promise") {
         structure(object, nam = as.name(nam.ob[i]))
       }
      str(object[[nam.ob[i]]], nest.lev = nest.lev + 1, indent.str = paste(indent.str, ".."), envir = envir, ...)
    }
  }
  if (is.proto(parent.env(object))) {
    cat(indent.str, "inherits from: ")
    str(parent.env(object), nest.lev = nest.lev)
  }
}

