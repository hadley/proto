\name{proto-package}
\alias{proto-package}
\docType{package}
\title{
Object-Oriented Programming with the Prototype Model
}
\description{
Object-oriented programming with the prototype model.  \code{"proto"}
facilitates object-oriented programming using an approach
that emphasizes objects rather than classes (although it
is powerful enough to readily represent classes too).
}
\details{
\code{"proto"} allows one to write object-oriented programs using
the prototype model.  It is a simple system that
uses objects rather than classes yet is powerful enough to readily
encompass classes too.  
The following are sources of information on \code{"proto"}:
\tabular{ll}{
Home page\tab \code{u <- "http://r-proto.googlecode.com"; browseURL(u)}\cr
Overview\tab \code{README <- system.file("README", package = "proto"); file.show(README)}\cr
Invoking a demo file\tab \code{demo("proto")}\cr
Referance Card\tab \code{vignette("protoref")}\cr
Tutorial \tab \code{vignette("proto")}\cr
Prototype OO concepts document\tab \code{u <- "http://r-proto.googlecode.com/files/prototype_approaches.pdf"; browseURL(u)}\cr
News\tab \code{RShowDoc("NEWS", package = "proto")}\cr
Wish List\tab \code{RShowDoc("WISHLIST", package = "proto")}\cr
Thanks\tab \code{RShowDoc("THANKS", package = "proto")}\cr
License\tab \code{RShowDoc("COPYING", package = "proto")}\cr
Citation\tab \code{citation(package = "proto")}\cr
This File\tab \code{package?proto}\cr
Help file\tab \code{?proto}\cr
graph.proto Help File\tab \code{?graph.proto}\cr
}
}

\note{See \code{?graph.proto} for the solution to a common
Linux installation problem with \code{Rgraphviz} that \code{proto}
depends on.}

\keyword{programming}
\examples{
cat("parent\n")
oop <- proto(x = 10, view = function(.) paste("this is a:", .$x))
oop$ls()
oop$view()

cat("override view in parent\n")
ooc1 <- oop$proto(view = function(.) paste("this is a: ***", .$x, "***"))
ooc1$view()

cat("override x in parent\n")
ooc2 <- oop$proto(x = 20)
ooc2$view()
\dontrun{
g <- graph.proto()
plot(g)
}
}
