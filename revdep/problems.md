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

7 packages with problems

|package   |version | errors| warnings| notes|
|:---------|:-------|------:|--------:|-----:|
|argparse  |1.0.4   |      0|        1|     0|
|AtelieR   |0.24    |      1|        0|     0|
|emojifont |0.3.4   |      0|        1|     1|
|nls2      |0.2     |      0|        1|     1|
|PKgraph   |1.7     |      1|        0|     0|
|pmg       |0.9-43  |      1|        0|     0|
|R2STATS   |0.68-38 |      1|        0|     0|

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

## R2STATS (0.68-38)
Maintainer: Yvonnick Noel <yvonnick.noel@uhb.fr>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘R2STATS’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/ggplot/proto/revdep/checks/R2STATS.Rcheck/00install.out’ for details.
```

