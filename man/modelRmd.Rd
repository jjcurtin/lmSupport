\name{modelRmd}
\alias{modelRmd}
\title{Returns a formatted string for stats reporting from a model in R Markdown}
\description{
  Returns a formatted string to report the B, CI, partial-eta2, t, and p-value for an effect from an lm model.  This formatted string is apporpriate for use in an R Markdown document for a dynamic report of research results.
}
\usage{modelRmd(effect, mod, B=1, CI=B, statistic='t', pe=2)}
\arguments{
  \item{effect}{Text label for effect in model}
  \item{mod}{object returned from lm() or Anova()}
  \item{B}{number of decimal places for report of B if lm model;  NULL if B should not be reported.  Ignored for Anova model}
  \item{CI}{number of decimal places for report of Bs in 95 CI;  NUll if CI should not be reported.  Ignored for Anova model}
  \item{statistic}{test statistic to report:  't' or 'F'.  Not currently implemented.  t for lm and F for Anova}  
  \item{pe}{number of decimal places for report of partial eta2.  Null if should not be reported}
}
\value{
  Returns a formatted  string that can be directly included in a R Markdown file for a dynamic report
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}