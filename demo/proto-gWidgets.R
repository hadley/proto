# John Verzani's gWidgets example found here:
# http://wiener.math.csi.cuny.edu/pmg/gWidgets/Examples/ProtoExample-II-ex.html

   library(proto)
   library(gWidgets)
   options("guiToolkit"="RGtk2")
 
 
   BasicWidget = proto(
   new = function(., message = "Basic Widget",
     window = gwindow(message),...) {
     .$proto(message=message, window=window, ...)
   },
   Show = function(.) {
     g = ggroup(horizontal=FALSE, cont=.$window)
     glabel(.$message, cont=g)
     if(length(.$widgetList) > 0) {
       tbl <- glayout(cont=g)
       ctr = 1; widgets = list()
       for(i in names(.$widgetList)) {
         tmp = .$widgetList[[i]]
         FUN = tmp[[1]]
         tmp[[1]] <- NULL
         tbl[ctr,1] = i
         tbl[ctr,2] <-
           (widgets[[i]] <- do.call(FUN, c(tmp, container = tbl)))
         ctr = ctr + 1
     }
       visible(tbl) <- TRUE
     }
     gseparator(cont=g)
     bg = ggroup(cont=g)
     addSpring(bg)
     cancelButton = gbutton("cancel", cont=bg,
       action = .,
       handler = function(h,...)  {
         dispose(h$action$window)
         ## others?
       })
     ## This is the main one. Notice we want to store in the parent, but
     ## still need the child to close the window and find the widgetList.
     okButton = gbutton("ok", cont=bg, action=list(self=.,super=parent.env(.)),
       handler = function(h,...) {
         for(i in names(h$action$self$widgetList))  {
           cat("store in ",i,"\n");
           h$action$super$props[[i]] <- svalue(widgets[[i]])
         }
           dispose(h$action$self$window)
       })
   },
   window = NULL,                      # top-level gwindow
   message = "Basic widget",
   props = list(),                     # for storing properties of widgets
   widgetList =  list()
   )
 
   BWTest = BasicWidget$new(message="Basic Widget Test",
   widgetList = list(
     edit = list(type="gedit",text="starting text"),
     droplist = list(type = "gdroplist", items = letters),
     slider = list(type = "gslider", value = 10),
     radio = list(type="gradio", items = 1:3, horizontal=FALSE)
  ))
 BWTest$Show()  ## show the widget
 
