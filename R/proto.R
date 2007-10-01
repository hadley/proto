# copy objects in e to f without forcing promises.
# if expr is missing then promises are copied to promises that have 
#  the same expression but are evaluated with respect to environment g.
# if expr is specified then it should be an expression in terms of variable_ 
#  that is applied to when the promise is evaluated.
# default expr is quote(_variable) if envir is missing or FALSE and
#  an expression which resets function environments to envir otherwise.

# used in cloning
resetIfFun <- function(v, e) {
   if (is.function(v)) environment(v) <- e
   v
}

clone2 <- function(e, f = new.env(parent = parent.env(e)), 
	g = parent.frame(), envir = f, expr, ...) {
	if (missing(expr)) {
	   expr <- if (identical(envir, FALSE)) quote(variable_) 
	   else quote(resetIfFun(variable_, envir)) 
	}
	for(n in ls(e, ...)) {
		do.call("delayedAssign", list(n, expr, assign.env = f))
	}
}

# e is source environment, f is target environment
# g is eval.env and envir is funEnvir
clone2 <- function(e, f = new.env(parent = parent.env(e)), 
	g = parent.frame(), envir = f, expr, ...) {
	if (missing(expr)) {
	   expr <- if (identical(envir, FALSE)) quote(variable_) 
	   else quote(resetIfFun(variable_, envir)) 
	}
	for(n in ls(e, ...)) {
	   ss2 <- do.call(substitute, list(expr, list(variable_ = as.name(n))))
	   ss1 <- do.call(substitute, list(ss2, e))
	   ss <- do.call(substitute, list(ss1, list(envir = envir)))
	   do.call("delayedAssign", list(n, ss, assign.env = f, eval.env = g))
        }
	if (is.proto(e)) f <- as.proto(f)
	# print(ls(f))
	# for(n in ls(f)) {
	#  cat(n, ":\n")
	#   print(do.call(substitute, list(as.name(n), f)))
	#}
	# browser()
	f
}

proto <- function (parent = parent.env(envir), expr = {}, envir = 
		new.env(parent = parent.frame()), ..., funEnvir = envir) {
    parent.env(envir) <- parent
    f <- function(){}
    formals(f) <- eval(substitute(as.pairlist(alist(...))))
    body(f) <- substitute(environment())
    # environment(f) <- parent
    clone2(e = f(), f = envir, g = parent.frame(), envir = funEnvir, all = TRUE)
    if (!missing(expr)) eval(substitute(eval(quote({ expr }))), envir)
    as.proto(envir)
}

as.proto <- function(x, ...) UseMethod("as.proto")
as.proto.environment <- function(x, ...) {
	assign(".that", x, env = x)
	assign(".super", parent.env(x), env = x)
	structure(x, class = c("proto", "environment"))
}

as.proto.proto <- function(x, ...) x
as.proto.list <- function(x, ..., envir = parent.frame()) do.call(proto, c(x, ...), envir = envir)

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

is.proto <- function(x) inherits(x, "proto")

#with.default seems to work just as well
#with.proto <- function(data, expr, ...)
#   eval.parent(substitute(eval(substitute(expr), data)))

"$.proto" <- function (this, x, ..., receiver = this, list) {
    # remember that x is the NAME of object, not object
    inh <- substr(x, 1, 2) != ".."
    getx <- get(x, env = this, inherits = inh)
    is.function <- is.function(getx)
    if (is.function && nargs() > 2) {
	# need a double substitute for receiver=this
	if (missing(list)) {
		if (identical(receiver, this))
			return(eval.parent(substitute(getx(this, ...))))
		else
			return(eval.parent(substitute(getx(receiver, ...))))
	} else return(do.call(getx, c(receiver, list)))
    }
    L <- base::list(x = x, this = this, inh = inh)
    is.that <- match(deparse(substitute(this)),c(".that",".super"),nomatch=0)>0
    s <- if (is.function && !is.that)
        substitute(function(..., receiver) {
		if (missing(receiver)) receiver <- this
		get(x, env = this, inherits = inh)(receiver, ...)}, L)
    else substitute(get(x, env = this, inherits = inh), L)
    # res <- eval(s, base::list(this = this, x = x, inh = inh), p)
    p <- parent.frame()
    res <- eval(s, L, p)
    if (is.function) {
        environment(res) <- p
        class(res) <- c("instantiatedProtoMethod", "function")
	attr(res, "this") <- this
	# if (!missing(args)) res <- do.call(res, args, envir = p)
    }
    res
}

"$<-.proto" <- function(this,s,value) { 
        if (s == ".super") parent.env(this) <- value
	if (is.function(value))  environment(value) <- this
	this[[as.character(substitute(s))]] <- value
	this
}

# modified from original by Tom Short
print.instantiatedProtoMethod <- function(x, ...) {
  # cat("proto method call: ")
  # print(unclass(x))
  cat("proto method (instantiated with ", name.proto(attr(x, "this")), "): ", sep = "")
  # print(eval(body(x)[[1]]))
  str(eval(body(x)[[1]]))
}

# modified from original by Tom Short
str.proto <- function(object, max.level = 1, nest.lev = 0, indent.str = 
   paste(rep.int(" ", max(0, nest.lev + 1)), collapse = ".."), ...) {
 cat("proto", name.proto(object), "\n")
 Lines <- capture.output(str(as.list(object), max.level = max.level, 
    nest.lev = nest.lev, ...))[-1]
 for(s in Lines) cat(s, "\n")
 if (is.proto(parent.env(object))) {
   cat(indent.str, "parent: ", sep = "")
   str(parent.env(object), nest.lev = nest.lev + 1, ...)
 }
}

# needed to work around bug in R in which promises are not
# evaluated (but should be) by as.list
as.list.environment <- function(x, ...) {
	sapply(ls(x, ...), get, x, simplify = FALSE)
}


that <- function(n = 1) attr(sys.function(n+1), "that")
that <- function() parent.env(parent.frame())
super <- function(n = 1) parent.env(that(n))
super <- function() parent.env(parent.env(parent.frame()))

