## Submission notes
This fixes a number of long-standing R CMD check problems, and introduces a NAMESPACE so that proto can be more easily used without being attached to the search path.

## Test environments
* local OS X install, R 3.2.0
* ubuntu 12.04 (on travis-ci), R 3.2.0
* win-builder (devel and release)

## R CMD check results
There were no ERRORs or WARNINGs. 

There was 1 NOTE:

* checking CRAN incoming feasibility ... NOTE

  The maintainer has changed from Gabor Grothendieck to myself.
  He will send a confirmation email shortly.

## Downstream dependencies
I have also run R CMD check on downstream dependencies of proto 
(https://github.com/hadley/proto/blob/master/revdep/summary.md). There were no new problems.
