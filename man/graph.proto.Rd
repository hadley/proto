\name{graph.proto}
\alias{graph.proto}
\alias{name.proto}
\title{ Create a graph of proto objects }
\description{
  Creates a graph of the parent/child relationships among a set of
  proto objects.
}
\usage{
graph.proto(e, g = new("graphNEL", edgemode = "directed"), child.to.parent = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{e}{ A proto object or an environment whose proto objects will
    be graphed. }
  \item{g}{ A graph to add the edges and nodes to.  Defaults to an
    empty graph. }
  \item{child.to.parent}{ If TRUE then arrows are drawn from child to
    parent; otherwise, from parent to child. }
}
\details{
  This function is used to create a graph in the sense of the
  \code{"graph"} package out of the parent child relationships
  of proto objects.  All \code{"proto"} objects in \code{"e"}
  and their immediate parents are placed in the graph.

  The objects are labelled using their \code{"..Name"} component.
  If there is no \code{"..Name"} component then their
  variable name in \code{"e"} is used.  In the case
  of a parent that is not in \code{"e"}, an internally generated
  name will be used if the parent has no \code{"..Name"} component.
  If two \code{"proto"} objects to be graphed have the same name
  the result is undefined.
}
\value{
  Produces an object of class \code{"graph"} that can subsequently
  be plotted.
}

\note{
  \code{graph.proto} makes use of the \code{Rgraphviz}
  package in the \code{BioConductor} repository and so 
  \code{Rgraphviz} must be installed and loaded.  On Linux one gotcha
  is that you may need to add the
  \code{graphviz} shared library, e.g. to add the directory containing
  the \code{.so} files,
  to your linker path via: 
  \code{export LD_LIBRARY_PATH=/path/to/graphviz/libs}.
}

\examples{
\dontrun{
a <- proto()
b <- a$proto()
g <- graph.proto()
plot(g)
g <- graph.proto(child.to.parent = FALSE) # change arrow heads
plot(g)
g <- graph.proto(g = new("graphNEL")) # undirected
plot(g)
g <- graph.proto()
attrs <- list(node = list(fillcolor = "lightgreen"), 
              edge = list(color = "cyan"),
      	graph = list(rankdir = "BT"))
plot(graph.proto(), attrs = attrs) # specify plot attributes
}
}
\keyword{programming}
