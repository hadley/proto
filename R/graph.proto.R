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
        gsub("^.* |>$", "", capture.output(print.default(.))[[1]])
    }
  } else {
    e <- get(., envir)
    if (exists("..Name", e, inherits = FALSE))
      e$..Name
    else
      .
  }
}



#' Create a graph of proto objects
#'
#' Creates a graph of the parent/child relationships among a set of proto
#' objects.
#'
#' This function is used to create a graph in the sense of the \code{"graph"}
#' package out of the parent child relationships of proto objects.  All
#' \code{"proto"} objects in \code{"e"} and their immediate parents are placed
#' in the graph.
#'
#' The objects are labelled using their \code{"..Name"} component.  If there is
#' no \code{"..Name"} component then their variable name in \code{"e"} is used.
#' In the case of a parent that is not in \code{"e"}, an internally generated
#' name will be used if the parent has no \code{"..Name"} component.  If two
#' \code{"proto"} objects to be graphed have the same name the result is
#' undefined.
#'
#' @aliases graph.proto name.proto
#' @param e A proto object or an environment whose proto objects will be
#' graphed.
#' @param g A graph to add the edges and nodes to.  Defaults to an empty graph.
#' @param child.to.parent If TRUE then arrows are drawn from child to parent;
#' otherwise, from parent to child.
#' @return Produces an object of class \code{"graph"} that can subsequently be
#' plotted.
#' @note \code{graph.proto} makes use of the \code{Rgraphviz} package in the
#' \code{BioConductor} repository and so \code{Rgraphviz} must be installed and
#' loaded.  On Linux one gotcha is that you may need to add the \code{graphviz}
#' shared library, e.g. to add the directory containing the \code{.so} files,
#' to your linker path via: \code{export
#' LD_LIBRARY_PATH=/path/to/graphviz/libs}.
#' @keywords programming
#' @examples
#'
#' \dontrun{
#' a <- proto()
#' b <- a$proto()
#' g <- graph.proto()
#' plot(g)
#' g <- graph.proto(child.to.parent = FALSE) # change arrow heads
#' plot(g)
#' g <- graph.proto(g = new("graphNEL")) # undirected
#' plot(g)
#' g <- graph.proto()
#' attrs <- list(node = list(fillcolor = "lightgreen"),
#'               edge = list(color = "cyan"),
#'       	graph = list(rankdir = "BT"))
#' plot(graph.proto(), attrs = attrs) # specify plot attributes
#' }
#'
graph.proto <- function(e, g = new("graphNEL", edgemode = "directed"),
                        child.to.parent = TRUE) {
  if (missing(e))
    e <- if (exists(".that")) get(".that") else parent.frame()

  if (suppressWarnings(!require(graph) || !require(Rgraphviz)))
    stop("Error: packages graph and Rgraphviz must be available for loading")
  # add node if its not already in g
  addNode. <- function(x, g) if (x %in% nodes(g)) g else addNode(x, g)
  # add edge between nodes adding nodes too if not already in g
  addEdge. <- function(x, y, g) {
    g <- addNode.(x,g); g <- addNode.(y, g)
    addEdge(x, y, g, 1)
  }
  nn <- unlist(eapply(e, is.proto))
  for (x in names(nn[nn]))
    g <- if (child.to.parent)
      addEdge.(name.proto(x,e), name.proto(get(x,e)$parent.env(), e), g)
  else
    addEdge.(name.proto(get(x,e)$parent.env(), e), name.proto(x, e), g)
  g
}

### test
# a <- proto()
# b <- a$proto()
# g <- graph.proto()
# plot(g)
# g <- graph.proto(child.to.parent = FALSE) # change arrow heads
# plot(g)
# g <- graph.proto(new("graphNEL")) # undirected
# plot(g)
# g <- graph.proto()
# attrs <- list(node = list(fillcolor = "lightgreen"),
#               edge = list(color = "cyan"),
#		graph = list(rankdir = "BT"))
# plot(graph.proto(), attrs) # specify plot attributes
