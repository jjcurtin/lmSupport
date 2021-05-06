\name{varMarkdown}
\alias{varMarkdown}
\title{Returns a formatted string for stats reporting in R Markdown}
\description{
  Returns a formatted string to report the B, CI, partial-eta2, t, and p-value for an effect from an lm mode.  This formatted string is apporpriate for use in an R Markdown document for a dynamic report of research results.
}
\usage{varMarkdown(effect, mod, modsum, statistic='t', B=1, CI=B, pe=2)}
\arguments{
  \item{effect}{Text label for effect from lm}
  \item{mod}{object returned from lm()}
  \item{modsum}{object returned from summary() or modelSummary()}
  \item{statistic}{test statistic to report:  't' or 'F'}
  \item{B}{number of decimal places for report of B;  NULL if B should not be reported}
  \item{CI}{number of decimal places for report of Bs in 95 CI;  NUll if CI should not be    reported}
  \item{pe}{number of decimal places for report of partial eta2.  Null if should not be reported}
}
\value{
  Returns a formatted  string that can be directly included in a R Markdown file for a dynamic report
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}