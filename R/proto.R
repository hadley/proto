#' Object-Oriented Programming with the Prototype Model
#'
#' Object-oriented programming with the prototype model.  \code{"proto"}
#' facilitates object-oriented programming using an approach that emphasizes
#' objects rather than classes (although it is powerful enough to readily
#' represent classes too).
#'
#' @name proto-package
#' @docType package
#' @keywords programming
#' @examples
#'
#' cat("parent\n")
#' oop <- proto(x = 10, view = function(.) paste("this is a:", .$x))
#' oop$ls()
#' oop$view()
#'
#' cat("override view in parent\n")
#' ooc1 <- oop$proto(view = function(.) paste("this is a: ***", .$x, "***"))
#' ooc1$view()
#'
#' cat("override x in parent\n")
#' ooc2 <- oop$proto(x = 20)
#' ooc2$view()
NULL

#' Prototype object-based programming
#'
#' \code{proto} creates or modifies objects of the proto object oriented
#' system.
#'
#' The \code{proto} class is an \code{S3} subclass of the R \code{environment}
#' class. In particular this implies that \code{proto} objects have single
#' inheritance and mutable state as all environments do. The \code{proto}
#' function creates and modifies objects of the \code{proto} class.  It (1)
#' sets the parent of codeenvir to \code{parent}, (2) evaluates \code{expr} in
#' the \code{envir} environment and (3) lazily evaluates the arguments in
#' \code{\dots{}} in the parent environment resetting the environment of any
#' functions (where the resetting is also done lazily).  All such functions are
#' known as methods and should have the receiver object as their first
#' argument. Conventionally this is \code{.} (i.e. a dot).  Also \code{.that}
#' and \code{.super} variables are added to the environment \code{envir}.
#' These point to the object itself and its parent, respectively. Note that
#' \code{proto} can be used as a method and overridden like any other method.
#' This allows objects to have object-specific versions of \code{proto}.  There
#' also exist \code{that()} and \code{super()} functions which have the same
#' purpose as \code{.that} and \code{.super} but do not rely on the
#' \code{.that} and \code{.super}.  \code{.that}, \code{.super}, \code{that()}
#' and \code{super()} can only be used within methods that have their object as
#' their environment.  In addition \code{that()} and \code{super()} may only be
#' used within the top level of such methods ( and not within functions within
#' such methods).
#'
#' \code{as.proto} is a generic with methods for environments, proto objects
#' and lists.
#'
#' \code{as.proto.list} copies each component, \code{el}, of the list \code{x}
#' into the the environment or proto object \code{envir} for which
#' \code{FUN(el)} is \code{TRUE}.  Components whose name begins with a dot,
#' \code{.}, are not copied unless \code{all.names} is \code{TRUE} (and
#' \code{FUN(el)} is \code{TRUE}). The result is a proto object whose parent is
#' \code{parent}. If \code{envir} is omitted a new object is created through a
#' call to \code{proto} with \code{parent} and \code{\dots{}} as arguments. If
#' \code{parent} is also omitted then the current environment is the parent.
#' Note that if \code{parent} is a proto object with its own \code{proto}
#' method then the \code{proto} method of the parent will override the one
#' described here in which case the functionality may differ.
#'
#' \code{$} can be used to access or set variables and methods in an object.
#'
#' When \code{$} is used for getting variables and methods, calls of the form
#' \code{obj$v} search for v in \code{obj} and if not found search upwards
#' through the ancestors of \code{obj} until found unless the name \code{v}
#' begins with two dots \code{..}.  In that case no upward search is done.
#'
#' If \code{meth} is a function then \code{obj$meth} is an object of class
#' \code{c("instantiatedProtoMethod", "function")} which is a \code{proto}
#' method with the first, i.e. proto slot, already filled in. It is normally
#' used in the context of a call to a method, e.g. \code{obj$meth(x,y)}. There
#' also exists \code{print.instantiatedProtoMethod} for printing such objects.
#' Be aware that an instantiated proto method is not the same as a proto
#' method.  An instantiated proto method has its first argument filled (with
#' the receiver object) whereas the first argument of a proto method does not.
#' If it is desired to actually return the method as a value not in the context
#' of a call then use the form \code{obj$with(meth)} or \code{obj[[meth]]}
#' which are similar to \code{with(obj, meth)} except that the variation using
#' \code{with} will search through ancestors while \code{[[} will not search
#' through ancestors). The difference between \code{obj$meth} and
#' \code{obj$with(meth)} is that in the first case \code{obj} implicitly
#' provides the first argument to the call so that \code{obj$meth(x,y)} and
#' \code{obj$with(meth)(obj,x,y)} are equivalent while in the case of
#' \code{obj$with(meth)} the first argument is not automatically inserted.
#'
#' \code{$.proto} also has a multiple argument form.  If three or more
#' arguments are present then they specify the arguments at which the
#' instantiated method is to be evaluated.  In this form the receiver object
#' must be specified explicitly.  This form can be used in situations where the
#' highest speed is required such as in the inner loops of computations.
#'
#' The forms \code{.that$meth} and \code{.super$meth} are special and should
#' only be used within methods.  \code{.that} refers to the object in which the
#' current method is located and \code{.super} refers to the parent of
#' \code{.that}.  In both cases the receiver object must be specified as the
#' first argument -- the receiver is not automatically inserted as with other
#' usages of \code{$}.
#'
#' \code{$} can be used to set variables and methods in an object. No ancestors
#' are searched for the set form of \code{$}. If the variable is the special
#' variable \code{.super} then not only is the variable set but the object's
#' parent is set to \code{.super}.
#'
#' A \code{with} method is available for \code{proto} objects.
#'
#' \code{is.proto(p)} returns TRUE if p is a prototype object.
#'
#' \code{str.proto} is provided for inspecting \code{proto} objects.
#'
#' @aliases proto as.proto as.proto.environment as.proto.list
#' as.proto.data.frame as.proto.proto isnot.function is.proto $.proto $<-.proto
#' with.proto str.proto . this .that that .super super
#' print.instantiatedProtoMethod
#' @param . the parent object of the new object.  May be a proto object or an
#' environment.
#' @param expr a series of statements enclosed in braces that define the
#' variables and methods of the object.  Empty braces, the default, may be used
#' if there are no variables or methods to add at this time.
#' @param envir an existing prototype object or environment into which the
#' variables and methods defined in \code{expr} are placed.  If omitted a new
#' object is created.
#' @param funEnvir the environment of methods passed via \dots{} are
#' automatically set to this environment.  Normally this argument is omitted,
#' defaulting to \code{envir}; however, one can specify \code{FALSE} to cause
#' their environment to not be set or one can specify some other environment or
#' proto object to which their environment is to be set.
#' @param x a list.
#' @param parent a prototype object or environment which is to be used as the
#' parent of the object.  If \code{envir} is specified then its parent is
#' coerced to \code{parent}.
#' @param \dots for \code{proto} these are components to be embedded in the new
#' object.  For \code{as.proto.list} these are arguments to pass to
#' \code{proto} in the case that a new object is created.  for \code{$.proto}
#' the method is evaluated at these arguments.
#' @return \code{proto} and \code{as.proto} all return proto objects.
#' @note proto methods can be used with environments but some care must be
#' taken.  Problems can be avoided by always using proto objects in these
#' cases.  This note discusses the pitfalls of using environments for those
#' cases where such interfacing is needed.
#'
#' If \code{e} is an environment then \code{e$x} will only search for \code{x}
#' in \code{e} and no further whereas if \code{e} were a proto object its
#' ancestors will be searched as well. For example, if the parent of a
#' \code{proto} object is an \code{environment} but not itself a \code{proto}
#' object then \code{.super$x} references in the methods of that object will
#' only look as far as the parent.
#'
#' Also note that the form \code{e$meth(...)} when used with an environment
#' will not automatically insert \code{e} as the first argument and so
#' environments can only be used with methods by using the more verbose
#' \code{e$meth(e, ...)}.  Even then it is not exactly equivalent since
#' \code{meth} will only be looked up in \code{e} but not its ancestors. To get
#' precise equivalence write the even more verbose \code{with(e, meth)(e,
#' ...)}.
#'
#' If the user has a proto object \code{obj} which is a child of the global
#' environment and whose methods use \code{.super} then \code{.super} will
#' refer to an environment, not a proto object (unless the global environment
#' is coerced to a proto object) and therefore be faced with the search
#' situation discussed above.  One solution is to create an empty root object
#' between the global environment and \code{obj} as in this diagram \code{Root
#' <- obj$.super <- proto(.GlobalEnv)} where \code{Root} is the root object.
#' Now \code{.super} references will reference \code{Root}, which is a proto
#' object so search will occur as expected.  \code{proto} does not provide such
#' a root object automatically but the user can create one easily, if desired.
#'
#' Although not recommended, it possible to coerce the global environment to a
#' proto object by issuing the command \code{as.proto(.GlobalEnv)}.  This will
#' effectively make the global environment a proto root object but has the
#' potential to break other software, although the authors have not actually
#' found any software that it breaks.
#' @seealso \code{\link{as.list}}, \code{\link{names}},
#' \code{\link{environment}}
#' @keywords programming
#' @examples
#' oo <- proto(expr = {
#'    x = c(10, 20, 15, 19, 17)
#'    location = function(.) mean(.$x) # 1st arg is object
#'    rms = function(.) sqrt(mean((.$x - .$location())^2))
#'    bias = function(., b) .$x <- .$x + b
#' })
#'
#' debug(oo$with(rms)) # cannot use oo$rms to pass method as a value
#' undebug(oo$with(rms)) # cannot use oo$rms to pass method as a value
#'
#' oo2 <- oo$proto( location = function(.) median(.$x) )
#' oo2$rms()      # note that first argument is omitted.
#' oo2$ls()       # list components of oo2
#' oo2$as.list()  # contents of oo2 as a list
#' oo2            # oo2 itself
#' oo2$parent.env() # same
#' oo2$parent.env()$as.list() # contents of parent of oo2
#' oo2$print()
#' oo2$ls()
#' oo2$str()
#' oo3 <- oo2
#' oo2$identical(oo3)
#' oo2$identical(oo)
#'
#' # start off with Root to avoid problem cited in Note
#' Root <- proto()
#' oop <- Root$proto(a = 1, incr = function(.) .$a <- .$a+1)
#' ooc <- oop$proto(a = 3) # ooc is child of oop but with a=3
#' ooc$incr()
#' ooc$a      # 4
#'
#' # same but proto overridden to force a to be specified
#' oop$proto <- function(., a) { .super$proto(., a=a) }
#' \dontrun{
#' ooc2 <- oop$proto() # Error. Argument "a" is missing, with no default.
#' }
#' ooc2 <- oop$proto(a = 10)
#' ooc2$incr()
#' ooc2$a # 11
#'
#' # use of with to eliminate having to write .$a
#' o2 <- proto(a = 1, incr = function(.) with(., a <- a+1))
#' o2c <- as.proto(o2$as.list()) # o2c is a clone of o2
#' o2d <- o2$proto()  # o2d is a child of o2
#' o2$a <- 2
#' o2c$a  # a not changed by assignment in line above
#' o2d$a # a is changed since a not found in o2d so found in o2
#'
#' p <- proto(a = 0, incr = function(., x) .$a <- .$a + x)
#' pc <- p$proto(a = 100)
#'
#' p$incr(7)
#' p$incr(x=7)
#' p$a
#'
#' @export
proto <- function(. = parent.env(envir), expr = {},
                   envir = new.env(parent = parent.frame()), ...,
                   funEnvir = envir) {
  parent.env(envir) <- .
  envir <- as.proto.environment(envir)  # must do this before eval(...)
  # moved eval after for so that ... always done first
  # eval(substitute(eval(quote({ expr }))), envir)
  dots <- list(...); names <- names(dots)
  for (i in seq_along(dots)) {
    assign(names[i], dots[[i]], envir = envir)
    if (!identical(funEnvir, FALSE) && is.function(dots[[i]]))
      environment(envir[[names[i]]]) <- funEnvir
  }
  eval(substitute(eval(quote({
    expr
  }))), envir)
  if (length(dots))
    as.proto.environment(envir)
  else
    envir
}

#' @export
#' @rdname proto
as.proto <- function(x, ...) {
  UseMethod("as.proto")
}

#' @export
#' @rdname proto
as.proto.environment <- function(x, ...) {
  assign(".that", x, envir = x)
  assign(".super", parent.env(x), envir = x)
  structure(x, class = c("proto", "environment"))
}

#' @export
#' @rdname proto
as.proto.proto <- function(x, ...) {
  x
}

#' @param all.names only names not starting with a dot are copied unless
#'   all.names is TRUE.
#' @param list list whose components are an alternate way to specifying
#'   arguments in place of \code{\dots{}}
#' @param SELECT a function which given an object returns \code{TRUE} or
#'   \code{FALSE} such that only those for which \code{SELECT} returns
#'   \code{TRUE} are kept in the returned \code{proto} object.
#' @rdname proto
#' @export
as.proto.list <- function(x, envir, parent, all.names = FALSE, ...,
                          funEnvir = envir, SELECT = function(x) TRUE) {
  if (missing(envir)) {
    if (missing(parent))
      parent <- parent.frame()
    envir <- if (is.proto(parent))
      parent$proto(...)
    else
      proto(parent, ...)
  }
  for (s in names(x))
    if (SELECT(x[[s]])) {
      assign(s, x[[s]], envir = envir)
      if (is.function(x[[s]]) && !identical(funEnvir, FALSE))
        environment(envir[[s]]) <- funEnvir
    }
  if (!missing(parent))
    parent.env(envir) <- parent
  as.proto.environment(envir)  # force refresh of .that and .super
}

#' @export
"$<-.proto" <- function(this,s,value) {
  if (s == ".super")
    parent.env(this) <- value
  if (is.function(value))
    environment(value) <- this
  this[[as.character(substitute(s))]] <- value
  this
}

#' @export
#' @rdname proto
is.proto <- function(x) inherits(x, "proto")

#' @export
"$.proto" <- function(x, name) {
  inherits <- substr(name, 1, 2) != ".."

  res <- get(name, envir = x, inherits = inherits)
  if (!is.function(res))
    return(res)

  if (deparse(substitute(x)) %in% c(".that", ".super"))
    return(res)

  structure(
    function(...) res(x, ...),
    class = "protoMethod",
    method = res
  )
}

#' @export
print.protoMethod <- function(x, ...) {
  cat("<ProtoMethod>\n")
  print(attr(x, "method"), ...)
}

# modified from Tom Short's original
#' @export
str.proto <- function(object, max.level = 1, nest.lev = 0,
                      indent.str = paste(rep.int(" ", max(0, nest.lev + 1)), collapse = ".."),
                      ...) {
  cat("proto", name.proto(object), "\n")
  Lines <- utils::capture.output(utils::str(
    as.list(object), max.level = max.level,
    nest.lev = nest.lev, ...
  ))[-1]
  for (s in Lines)
    cat(s, "\n")
  if (is.proto(parent.env(object))) {
    cat(indent.str, "parent: ", sep = "")
    utils::str(parent.env(object), nest.lev = nest.lev + 1, ...)
  }
}

#' @export
print.proto <- function(x, ...) {
  if (!exists("proto_print", envir = x, inherits = TRUE))
    return(NextMethod())

  x$proto_print(...)
}

