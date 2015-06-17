# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.2.0 (2015-04-16) |
|system   |x86_64, darwin13.4.0         |
|ui       |RStudio (0.99.584)           |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |

## Packages

|package  |*  |version |date       |source         |
|:--------|:--|:-------|:----------|:--------------|
|testthat |*  |0.10.0  |2015-05-22 |CRAN (R 3.2.0) |

# Check results
28 checked out of 28 dependencies 

## argparse (1.0.1)
Maintainer: Trevor L Davis <trevor.l.davis@stanford.edu>  
Bug reports: https://github.com/trevorld/argparse/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
sh: rst2pdf: command not found
Error: processing vignette 'argparse.Rrst' failed with diagnostics:
conversion by rst2pdf failed!
Execution halted

```
```
DONE
Status: 2 NOTEs
```

## AtelieR (0.24)
Maintainer: Yvonnick Noel <yvonnick.noel@uhb.fr>

```
checking whether package ‘AtelieR’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/Rtmp7zD2cp/check_crancc6a77df7950/AtelieR.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## bams (1.6)
Maintainer: Toby Dylan Hocking <toby@sg.cs.titech.ac.jp>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘GLAD’ ‘DNAcopy’ ‘gada’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘DNAcopy’ ‘GLAD’ ‘cghseg’ ‘changepoint’ ‘gada’ ‘grid’ ‘proto’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Missing or unexported object: ‘ggplot2::coord_transform’
Unexported objects imported by ':::' calls:
  ‘cghseg:::segmeanCO’ ‘ggplot2:::GeomRect’
  See the note in ?`:::` about the use of this operator.
```
```
checking R code for possible problems ... NOTE
dnacopy.smoothvec : <anonymous>: no visible global function definition
  for ‘smooth.CNA’
dnacopy.smoothvec : <anonymous>: no visible global function definition
  for ‘segment’
dnacopy.smoothvec : <anonymous>: no visible binding for global variable
  ‘segment’
gada.results : <anonymous> : <anonymous>: no visible global function
  definition for ‘WextIextToSegments’
geom_tallrect: no visible global function definition for ‘proto’
geom_tallrect : draw_groups: no visible global function definition for
  ‘unit’
run.pelt: no visible binding for global variable ‘cpt.mean’
runglad: no visible global function definition for ‘as.profileCGH’
runglad : <anonymous>: no visible binding for global variable ‘daglad’
runglad : <anonymous> : <anonymous>: no visible binding for global
  variable ‘glad’
```
```
checking line endings in Makefiles ... NOTE
Found the following Makefile(s) without a final LF:
  inst/article/Makefile
Some ‘make’ programs ignore lines not ending in LF.
```
```
DONE
Status: 4 NOTEs
```

## benchmark (0.3-6)
Maintainer: Manuel J. A. Eugster <manuel@mjae.net>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘Rgraphviz’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘multcomp’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking R code for possible problems ... NOTE
boxplot.AlgorithmPerformance: no visible binding for global variable
  ‘algorithms’
boxplot.AlgorithmPerformance: no visible binding for global variable
  ‘value’
boxplot.AlgorithmPerformance: no visible binding for global variable
  ‘samples’
bsgraph0.dist: no visible global function definition for ‘addEdge’
bsgraph0.graphNEL: no visible global function definition for
  ‘getDefaultAttrs’
bsgraph0.graphNEL: no visible global function definition for ‘agopen’
densityplot.AlgorithmPerformance: no visible binding for global
  variable ‘value’
densityplot.AlgorithmPerformance: no visible binding for global
  variable ‘algorithms’
mi: no visible global function definition for ‘mi.plugin’
patch.relation_class_ids: no visible global function definition for
  ‘relation_is_strict_weak_order’
plot.DatasetCharacterization: no visible binding for global variable
  ‘characteristics’
plot.DatasetCharacterization: no visible binding for global variable
  ‘value’
plot.DatasetCharacterization: no visible binding for global variable
  ‘samples’
plot.TestResult: no visible binding for global variable ‘samples’
plot.TestResult: no visible binding for global variable ‘value’
stripchart.AlgorithmPerformance: no visible binding for global variable
  ‘algorithms’
stripchart.AlgorithmPerformance: no visible binding for global variable
  ‘value’
stripchart.AlgorithmPerformance: no visible binding for global variable
  ‘samples’
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘graph’
```
```
DONE
Status: 4 NOTEs
```

## coefplot (1.2.0)
Maintainer: Jared P. Lander <packages@jaredlander.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
Deprecated license: BSD
```
```
DONE
Status: 1 NOTE
```

## DescribeDisplay (0.2.4)
Maintainer: Di Cook <dicook@iastate.edu>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
Deprecated license: BSD
```
```
checking top-level files ... NOTE
Non-standard files/directories found at top level:
  ‘ggobi-xml’ ‘load.r’ ‘write-xml.rnw’
```
```
checking dependencies in R code ... NOTE
Package in Depends field not imported from: ‘proto’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
DONE
Status: 3 NOTEs
```

## directlabels (2013.6.15)
Maintainer: Toby Dylan Hocking <toby@sg.cs.titech.ac.jp>

```
checking dependencies in R code ... NOTE
'library' or 'require' calls to packages already attached by Depends:
  ‘grid’ ‘quadprog’
  Please remove these calls from your code.
'library' or 'require' calls in package code:
  ‘alphahull’ ‘ggplot2’ ‘inlinedocs’ ‘proto’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Packages in Depends field not imported from:
  ‘grid’ ‘quadprog’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
Unexported objects imported by ':::' calls:
  ‘ggplot2:::Geom’ ‘ggplot2:::StatIdentity’ ‘ggplot2:::aesdefaults’
  ‘ggplot2:::coord_transform’
  See the note in ?`:::` about the use of this operator.
```
```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  drawDetails.dlgrob
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
checking R code for possible problems ... NOTE
ahull.points: no visible global function definition for ‘ashape’
calc.boxes: no visible global function definition for
  ‘current.viewport’
direct.label.ggplot: no visible global function definition for
  ‘aes_string’
direct.label.ggplot: no visible global function definition for ‘guides’
dl.move : pf: no visible global function definition for ‘unit’
dl.move : pf: no visible global function definition for ‘convertUnit’
dlcompare: no visible global function definition for ‘grid.newpage’
dlcompare: no visible global function definition for ‘grid.layout’
dlcompare: no visible global function definition for ‘unit’
dlcompare: no visible global function definition for ‘pushViewport’
dlcompare: no visible global function definition for ‘viewport’
dlcompare: no visible global function definition for ‘grid.text’
dlcompare: no visible global function definition for ‘popViewport’
dlcompare: no visible global function definition for ‘grid.rect’
dldoc: no visible global function definition for ‘theme_set’
dldoc: no visible global function definition for ‘theme_grey’
dldoc : makehtml : <anonymous>: no visible global function definition
  for ‘grid.text’
dlgrob: no visible global function definition for ‘grob’
drawDetails.dlgrob: no visible global function definition for
  ‘convertX’
drawDetails.dlgrob: no visible global function definition for ‘unit’
drawDetails.dlgrob: no visible global function definition for
  ‘convertY’
drawDetails.dlgrob: no visible binding for global variable ‘gpar’
empty.grid: no visible global function definition for ‘convertX’
empty.grid: no visible global function definition for ‘unit’
empty.grid: no visible global function definition for ‘convertY’
empty.grid : draw : drawlines: no visible global function definition
  for ‘grid.segments’
empty.grid : draw : drawlines: no visible global function definition
  for ‘gpar’
extract.posfun: no visible global function definition for
  ‘extract.docs.file’
geom_dl: no visible global function definition for ‘proto’
geom_dl : default_aes: no visible global function definition for ‘aes’
panel.superpose.dl: no visible binding for global variable
  ‘panel.superpose’
panel.superpose.dl: no visible global function definition for
  ‘trellis.par.get’
panel.superpose.dl: no visible global function definition for
  ‘grid.draw’
project.onto.segments: no visible global function definition for
  ‘grid.segments’
qp.labels : <anonymous>: no visible global function definition for
  ‘solve.QP’
static.labels : <anonymous>: no visible global function definition for
  ‘convertX’
static.labels : <anonymous>: no visible global function definition for
  ‘unit’
static.labels : <anonymous>: no visible global function definition for
  ‘convertY’
xlimits: no visible global function definition for ‘convertX’
xlimits: no visible global function definition for ‘unit’
ylimits: no visible global function definition for ‘convertY’
ylimits: no visible global function definition for ‘unit’
```
```
DONE
Status: 3 NOTEs
```

## DTR (1.6)
Maintainer: Xinyu Tang <xtang@uams.edu>

__OK__

## extracat (1.7-1)
Maintainer: Alexander Pilhoefer <alexander.pilhoefer@math.uni-augsburg.de>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## ggmap (2.4)
Maintainer: David Kahle <david.kahle@gmail.com>  
Bug reports: https://github.com/dkahle/ggmap/issues

```
checking examples ... ERROR
Running examples in ‘ggmap-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: geocode
> ### Title: Geocode
> ### Aliases: geocode geocodeQueryCheck
> 
> ### ** Examples
> 
> # Types of input
> geocode('Baylor University')
Information from URL : http://maps.googleapis.com/maps/api/geocode/json?address=Baylor+University&sensor=false
        lon      lat
1 -97.11844 31.54822
> geocode('1600 Pennsylvania Avenue, Washington DC')
Information from URL : http://maps.googleapis.com/maps/api/geocode/json?address=1600+Pennsylvania+Avenue,+Washington+DC&sensor=false
        lon      lat
1 -76.98168 38.87866
> geocode('the white house')
Information from URL : http://maps.googleapis.com/maps/api/geocode/json?address=the+white+house&sensor=false
        lon      lat
1 -77.03653 38.89768
> geocode(c('baylor university', 'salvation army waco'))
Information from URL : http://maps.googleapis.com/maps/api/geocode/json?address=baylor+university&sensor=false
Information from URL : http://maps.googleapis.com/maps/api/geocode/json?address=salvation+army+waco&sensor=false
        lon      lat
1 -97.11844 31.54822
2 -97.12858 31.54158
> 
> # Types of output
> geocode('Baylor University', output = "latlona")
        lon      lat
1 -97.11844 31.54822
                                                        address
1 baylor university, 1311 south 5th street, waco, tx 76706, usa
> geocode('Baylor University', output = "more")
Error in data.frame(long_name = "Baylor University", short_name = "Baylor University",  : 
  arguments imply differing number of rows: 1, 0
Calls: geocode ... as.data.frame -> as.data.frame.list -> eval -> eval -> data.frame
Execution halted
```
```
DONE
Status: 1 ERROR
```

## ggplot2 (1.0.1)
Maintainer: Hadley Wickham <h.wickham@gmail.com>  
Bug reports: https://github.com/hadley/ggplot2/issues

__OK__

## ggsubplot (0.3.2)
Maintainer: Garrett Grolemund <garrett@rstudio.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## ggtern (1.0.5.0)
Maintainer: Nicholas Hamilton <nick@ggtern.com>

__OK__

## ggthemes (2.1.2)
Maintainer: Jeffrey B. Arnold <jeffrey.arnold@gmail.com>  
Bug reports: http://github.com/jrnold/ggthemes

__OK__

## gsubfn (0.6-6)
Maintainer: G. Grothendieck <ggrothendieck@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  as.function.formula
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 2 NOTEs
```

## HistData (0.7-5)
Maintainer: Michael Friendly <friendly@yorku.ca>

```
checking Rd cross-references ... NOTE
Packages unavailable to check Rd xrefs: ‘Guerry’, ‘alr3’, ‘agridat’
```
```
DONE
Status: 1 NOTE
```

## Hmisc (3.16-0)
Maintainer: Frank E Harrell Jr <f.harrell@vanderbilt.edu>

```
checking whether package ‘Hmisc’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/Rtmp7zD2cp/check_crancc6a77df7950/Hmisc.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## MetaQC (0.1.13)
Maintainer: Don Kang <donkang75@gmail.com>

```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘survival’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Packages in Depends field not imported from:
  ‘foreach’ ‘iterators’ ‘proto’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  plot.proto print.proto
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
checking R code for possible problems ... NOTE
GMT2List: no visible global function definition for ‘%dopar%’
GMT2List: no visible global function definition for ‘foreach’
GMT2List: no visible global function definition for ‘iter’
GMT2List: no visible binding for global variable ‘x’
GetPVal : <anonymous>: no visible global function definition for
  ‘coxph’
MetaQC: no visible global function definition for ‘proto’
MetaQC: no visible global function definition for ‘registerDoMC’
MetaQC: no visible global function definition for ‘registerDoSNOW’
MetaQC: no visible global function definition for ‘makeCluster’
MetaQC : .Initialize: no visible global function definition for ‘%do%’
MetaQC : .Initialize: no visible global function definition for
  ‘foreach’
MetaQC : .Initialize: no visible global function definition for ‘iter’
MetaQC : .FilterGenes: no visible global function definition for
  ‘%dopar%’
MetaQC : .FilterGenes: no visible global function definition for
  ‘foreach’
MetaQC : .FilterGenes: no visible global function definition for ‘iter’
MetaQC : .FilterGenes: no visible binding for global variable ‘d’
MetaQC : .ConvertToGeneSetIdx: no visible global function definition
  for ‘%dopar%’
MetaQC : .ConvertToGeneSetIdx: no visible global function definition
  for ‘foreach’
MetaQC : .ConvertToGeneSetIdx: no visible global function definition
  for ‘iter’
MetaQC : .ConvertToGeneSetIdx: no visible global function definition
  for ‘%do%’
MetaQC : .ConvertToGeneSetIdx: no visible binding for global variable
  ‘g’
MetaQC : .ConvertToGeneSetIdx: no visible binding for global variable
  ‘d’
MetaQC : .CalcPval: no visible global function definition for ‘%do%’
MetaQC : .CalcPval: no visible global function definition for ‘foreach’
MetaQC : .CalcPval: no visible binding for global variable ‘i’
MetaQC : .CalcPval: no visible global function definition for ‘%dopar%’
MetaQC : .CalcPval: no visible binding for global variable ‘w’
MetaQC : .CalcPval: no visible global function definition for ‘iter’
MetaQC : .CalcPval: no visible binding for global variable ‘j’
MetaQC : .CalcPval: no visible binding for global variable ‘b’
MetaQC : EQC: no visible global function definition for ‘%do%’
MetaQC : EQC: no visible global function definition for ‘foreach’
MetaQC : EQC: no visible global function definition for ‘%dopar%’
MetaQC : EQC: no visible global function definition for ‘iter’
MetaQC : EQC: no visible binding for global variable ‘g’
MetaQC : EQC: no visible binding for global variable ‘w’
MetaQC : AQCg: no visible global function definition for ‘%dopar%’
MetaQC : AQCg: no visible global function definition for ‘foreach’
MetaQC : AQCg: no visible binding for global variable ‘i’
MetaQC : AQCp: no visible global function definition for ‘%dopar%’
MetaQC : AQCp: no visible global function definition for ‘foreach’
MetaQC : AQCp: no visible binding for global variable ‘i’
MetaQC : CQCg: no visible global function definition for ‘%dopar%’
MetaQC : CQCg: no visible global function definition for ‘foreach’
MetaQC : CQCg: no visible global function definition for ‘iter’
MetaQC : CQCg: no visible binding for global variable ‘dat’
MetaQC : CQCg: no visible binding for global variable ‘pv’
MetaQC : CQCg: no visible binding for global variable ‘i’
MetaQC : CQCp: no visible global function definition for ‘%dopar%’
MetaQC : CQCp: no visible global function definition for ‘foreach’
MetaQC : CQCp: no visible global function definition for ‘iter’
MetaQC : CQCp: no visible binding for global variable ‘dat’
MetaQC : CQCp: no visible binding for global variable ‘pv’
MetaQC : CQCp: no visible global function definition for ‘%do%’
MetaQC : CQCp: no visible binding for global variable ‘ii’
MetaQC : CQCp: no visible binding for global variable ‘jj’
MetaQC : CQCp: no visible binding for global variable ‘i’
MetaQC : IQC: no visible global function definition for ‘%dopar%’
MetaQC : IQC: no visible global function definition for ‘foreach’
MetaQC : IQC: no visible binding for global variable ‘i’
MetaQC : .CalcDistOfStudies: no visible global function definition for
  ‘%dopar%’
MetaQC : .CalcDistOfStudies: no visible global function definition for
  ‘foreach’
MetaQC : .CalcDistOfStudies: no visible global function definition for
  ‘iter’
MetaQC : .CalcDistOfStudies: no visible binding for global variable
  ‘ii’
MetaQC : .CalcDistOfStudies: no visible global function definition for
  ‘%do%’
MetaQC : .CalcDistOfStudies: no visible binding for global variable
  ‘jj’
MetaQC : .CalcScores: no visible global function definition for ‘%do%’
MetaQC : .CalcScores: no visible global function definition for
  ‘foreach’
MetaQC : .CalcScores: no visible global function definition for ‘iter’
MetaQC : .CalcScores: no visible binding for global variable ‘d’
requireAll: no visible binding for global variable ‘biocLite’
requireAll: no visible global function definition for ‘biocLite’
```
```
DONE
Status: 3 NOTEs
```

## multilevelPSA (1.2.2)
Maintainer: Jason Bryer <jason@bryer.org>  
Bug reports: https://github.com/jbryer/multilevelPSA/issues

```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘MASS’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
DONE
Status: 1 NOTE
```

## nls2 (0.2)
Maintainer: G. Grothendieck <ggrothendieck@gmail.com>  
Bug reports: http://groups.google.com/group/sqldf

```
checking dependencies in R code ... NOTE
Package in Depends field not imported from: ‘proto’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
Unexported objects imported by ':::' calls:
  ‘stats:::nlsModel’ ‘stats:::nlsModel.plinear’
  See the note in ?`:::` about the use of this operator.
```
```
DONE
Status: 1 NOTE
```

## PKgraph (1.7)
Maintainer: Xiaoyong Sun <johnsunx1@gmail.com>

```
checking package dependencies ... ERROR
Package required but not available: ‘rggobi’

Depends: includes the non-default packages:
  ‘RGtk2’ ‘gWidgetsRGtk2’ ‘cairoDevice’ ‘lattice’ ‘rggobi’ ‘ggplot2’
  ‘proto’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
Status: 1 ERROR
```

## pmg (0.9-43)
Maintainer: John Verzani <jverzani@gmail.com>

__OK__

## R2STATS (0.68-38)
Maintainer: Yvonnick Noel <yvonnick.noel@uhb.fr>

```
checking whether package ‘R2STATS’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/Rtmp7zD2cp/check_crancc6a77df7950/R2STATS.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## Rcell (1.3-2)
Maintainer: Alan Bush <abush@fbmc.fcen.uba.ar>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘EBImage’
```
```
checking dependencies in R code ... NOTE
Unexported objects imported by ':::' calls:
  ‘ggplot2:::Geom’ ‘ggplot2:::Position’ ‘ggplot2:::Stat’
  See the note in ?`:::` about the use of this operator.
```
```
checking R code for possible problems ... NOTE
.nchar: possible error in nchar(x, type, allowNA, keepNA = FALSE):
  unused argument (keepNA = FALSE)
```
```
DONE
Status: 3 NOTEs
```

## sqldf (0.4-10)
Maintainer: G. Grothendieck <ggrothendieck@gmail.com>  
Bug reports: http://groups.google.com/group/sqldf

```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘tcltk’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
DONE
Status: 1 NOTE
```

## statar (0.3.0)
Maintainer: Matthieu Gomez <mattg@princeton.edu>  
Bug reports: https://github.com/matthieugomez/statar/issues

__OK__

## synthpop (1.1-0)
Maintainer: Beata Nowok <beata.nowok@gmail.com>

```
checking dependencies in R code ... NOTE
Unexported object imported by a ':::' call: ‘coefplot:::position_dodgev’
  See the note in ?`:::` about the use of this operator.
```
```
DONE
Status: 1 NOTE
```

## traitr (0.14)
Maintainer: John Verzani <jverzani@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

