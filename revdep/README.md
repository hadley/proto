# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.1 (2016-06-21) |
|system   |x86_64, darwin13.4.0         |
|ui       |RStudio (1.0.106)            |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |
|date     |2016-10-28                   |

## Packages

|package  |*  |version |date       |source         |
|:--------|:--|:-------|:----------|:--------------|
|proto    |*  |0.3-10  |2012-12-22 |cran (@0.3-10) |
|testthat |*  |1.0.2   |2016-04-23 |cran (@1.0.2)  |

# Check results

20 packages

|package              |version | errors| warnings| notes|
|:--------------------|:-------|------:|--------:|-----:|
|argparse             |1.0.4   |      0|        1|     0|
|AtelieR              |0.24    |      1|        0|     0|
|benchmark            |0.3-6   |      0|        0|     4|
|emojifont            |0.3.4   |      0|        1|     1|
|extracat             |1.7-4   |      0|        0|     0|
|ggmap                |2.6.1   |      0|        0|     0|
|ggtern               |2.1.4   |      0|        0|     1|
|gsubfn               |0.6-6   |      0|        0|     3|
|HistData             |0.7-8   |      0|        0|     1|
|MetaQC               |0.1.13  |      0|        0|     3|
|nls2                 |0.2     |      0|        1|     1|
|PKgraph              |1.7     |      1|        0|     0|
|pmg                  |0.9-43  |      1|        0|     0|
|PTXQC                |0.80.14 |      0|        0|     1|
|R2STATS              |0.68-38 |      1|        0|     0|
|RDocumentation       |0.7.1   |      0|        0|     0|
|SparseFactorAnalysis |1.0     |      0|        0|     0|
|sqldf                |0.4-10  |      0|        0|     2|
|synthpop             |1.3-0   |      0|        0|     0|
|traitr               |0.14    |      0|        0|     1|

## argparse (1.0.4)
Maintainer: Trevor L Davis <trevor.l.davis@gmail.com>  
Bug reports: https://github.com/trevorld/argparse/issues

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
sh: rst2pdf: command not found
Error: processing vignette 'argparse.Rrst' failed with diagnostics:
conversion by rst2pdf failed!
Execution halted

```

## AtelieR (0.24)
Maintainer: Yvonnick Noel <yvonnick.noel@uhb.fr>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘AtelieR’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/ggplot/proto/revdep/checks/AtelieR.Rcheck/00install.out’ for details.
```

## benchmark (0.3-6)
Maintainer: Manuel J. A. Eugster <manuel@mjae.net>

0 errors | 0 warnings | 4 notes

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘Rgraphviz’

checking dependencies in R code ... NOTE
'library' or 'require' call to ‘multcomp’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.

checking R code for possible problems ... NOTE
as.dataset: no visible global function definition for ‘terms’
as.dataset: no visible global function definition for ‘as.formula’
as.psychobench: no visible global function definition for ‘is’
as.psychobench: no visible global function definition for ‘reshape’
benchmark: no visible global function definition for ‘as.formula’
benchmark: no visible global function definition for ‘predict’
benchmark: no visible global function definition for ‘na.omit’
beplot0.AlgorithmPerformance : <anonymous>: no visible global function
  definition for ‘legend’
... 81 lines ...
  theme_text value
Consider adding
  importFrom("grDevices", "col2rgb", "gray", "rgb")
  importFrom("graphics", "abline", "axis", "barplot", "box", "layout",
             "legend", "lines", "mtext", "par", "points", "rect",
             "segments")
  importFrom("methods", "is", "new")
  importFrom("stats", "as.formula", "cancor", "lm", "median", "na.omit",
             "predict", "reshape", "terms")
to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
contains 'methods').

checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘graph’
```

## emojifont (0.3.4)
Maintainer: Guangchuang Yu <guangchuangyu@gmail.com>  
Bug reports: https://github.com/GuangchuangYu/emojifont/issues

0 errors | 1 warning  | 1 note 

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Quitting from lines 119-144 (emojifont.Rmd) 
Error: processing vignette 'emojifont.Rmd' failed with diagnostics:
there is no package called 'ggtree'
Execution halted


checking package dependencies ... NOTE
Package suggested but not available for checking: ‘ggtree’
```

## extracat (1.7-4)
Maintainer: Alexander Pilhoefer <alexander.pilhoefer@gmail.com>

0 errors | 0 warnings | 0 notes

## ggmap (2.6.1)
Maintainer: David Kahle <david.kahle@gmail.com>  
Bug reports: https://github.com/dkahle/ggmap/issues

0 errors | 0 warnings | 0 notes

## ggtern (2.1.4)
Maintainer: Nicholas Hamilton <nick@ggtern.com>

0 errors | 0 warnings | 1 note 

```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘chemometrics’
```

## gsubfn (0.6-6)
Maintainer: G. Grothendieck <ggrothendieck@gmail.com>

0 errors | 0 warnings | 3 notes

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  as.function.formula
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.

checking R code for possible problems ... NOTE
read.pattern: no visible global function definition for ‘read.table’
Undefined global functions or variables:
  read.table
Consider adding
  importFrom("utils", "read.table")
to your NAMESPACE file.
```

## HistData (0.7-8)
Maintainer: Michael Friendly <friendly@yorku.ca>

0 errors | 0 warnings | 1 note 

```
checking Rd cross-references ... NOTE
Packages unavailable to check Rd xrefs: ‘Guerry’, ‘alr3’, ‘agridat’
```

## MetaQC (0.1.13)
Maintainer: Don Kang <donkang75@gmail.com>

0 errors | 0 warnings | 3 notes

```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘survival’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Packages in Depends field not imported from:
  ‘foreach’ ‘iterators’ ‘proto’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  plot.proto print.proto
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.

checking R code for possible problems ... NOTE
Download: no visible global function definition for ‘download.file’
GMT2List: no visible global function definition for ‘%dopar%’
GMT2List: no visible global function definition for ‘foreach’
GMT2List: no visible global function definition for ‘iter’
GMT2List: no visible binding for global variable ‘x’
GetEWPval: no visible global function definition for ‘pchisq’
GetPVal : t.test2: no visible global function definition for ‘pt’
GetPVal : <anonymous>: no visible global function definition for
  ‘t.test’
... 137 lines ...
  registerDoMC registerDoSNOW sd t.test text w wilcox.test x
Consider adding
  importFrom("grDevices", "gray")
  importFrom("graphics", "abline", "arrows", "axis", "box", "plot",
             "points", "text")
  importFrom("stats", "as.dist", "cor", "cor.test", "fisher.test",
             "ks.test", "lm", "median", "na.omit", "p.adjust", "pchisq",
             "pnorm", "prcomp", "pt", "qnorm", "sd", "t.test",
             "wilcox.test")
  importFrom("utils", "download.file", "installed.packages")
to your NAMESPACE file.
```

## nls2 (0.2)
Maintainer: G. Grothendieck <ggrothendieck@gmail.com>  
Bug reports: http://groups.google.com/group/sqldf

0 errors | 1 warning  | 1 note 

```
checking dependencies in R code ... WARNING
Package in Depends field not imported from: ‘proto’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
Unexported objects imported by ':::' calls:
  ‘stats:::nlsModel’ ‘stats:::nlsModel.plinear’
  See the note in ?`:::` about the use of this operator.
  Including base/recommended package(s):
  ‘stats’

checking R code for possible problems ... NOTE
nls2: no visible global function definition for ‘nls.control’
nls2: no visible global function definition for ‘as.formula’
nls2: no visible global function definition for ‘coef’
nls2: no visible global function definition for ‘runif’
nls2 : <anonymous>: no visible global function definition for
  ‘deviance’
Undefined global functions or variables:
  as.formula coef deviance nls.control runif
Consider adding
  importFrom("stats", "as.formula", "coef", "deviance", "nls.control",
             "runif")
to your NAMESPACE file.
```

## PKgraph (1.7)
Maintainer: Xiaoyong Sun <johnsunx1@gmail.com>

1 error  | 0 warnings | 0 notes

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
```

## pmg (0.9-43)
Maintainer: John Verzani <jverzani@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘pmg’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/ggplot/proto/revdep/checks/pmg.Rcheck/00install.out’ for details.
```

## PTXQC (0.80.14)
Maintainer: Chris Bielow <chris.bielow@mdc-berlin.de>  
Bug reports: https://github.com/cbielow/PTXQC/issues

0 errors | 0 warnings | 1 note 

```
checking installed package size ... NOTE
  installed size is  6.4Mb
  sub-directories of 1Mb or more:
    doc        3.5Mb
    examples   2.3Mb
```

## R2STATS (0.68-38)
Maintainer: Yvonnick Noel <yvonnick.noel@uhb.fr>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘R2STATS’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/ggplot/proto/revdep/checks/R2STATS.Rcheck/00install.out’ for details.
```

## RDocumentation (0.7.1)
Maintainer: Ludovic Vannoorenberghe <ludovic@datacamp.com>  
Bug reports: https://github.com/datacamp/RDocumentation/issues

0 errors | 0 warnings | 0 notes

## SparseFactorAnalysis (1.0)
Maintainer: Marc Ratkovic <ratkovic@princeton.edu>

0 errors | 0 warnings | 0 notes

## sqldf (0.4-10)
Maintainer: G. Grothendieck <ggrothendieck@gmail.com>  
Bug reports: http://groups.google.com/group/sqldf

0 errors | 0 warnings | 2 notes

```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘tcltk’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.

checking R code for possible problems ... NOTE
read.csv.sql: no visible global function definition for ‘download.file’
sqldf: no visible global function definition for ‘modifyList’
sqldf: no visible global function definition for ‘head’
Undefined global functions or variables:
  download.file head modifyList
Consider adding
  importFrom("utils", "download.file", "head", "modifyList")
to your NAMESPACE file.
```

## synthpop (1.3-0)
Maintainer: Beata Nowok <beata.nowok@gmail.com>

0 errors | 0 warnings | 0 notes

## traitr (0.14)
Maintainer: John Verzani <jverzani@gmail.com>

0 errors | 0 warnings | 1 note 

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```

