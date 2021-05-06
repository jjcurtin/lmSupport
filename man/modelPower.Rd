\name{modelPower}
\alias{modelPower}
\title{Calculate power for GLM tests}
\description{
Wrapper to calculate power for tests of paramter estimates or full model in GLM based on Cohen's tables and using pwr.f2.test in pwr packag.  Allows use of partial eta squared or delta R2 rather than just f2 as effect size.   If you provide power, it returns N, if you provide N, it returns power.  You must specify effect size as either f2, partial eta2, or delta R2 with model R2. You must also specify the number of parameters in the compact (pc) and augmented (pa) for the model comparison that will test the effect.
}
\usage{
modelPower(pc=NULL, pa=NULL, N=NULL, alpha=0.05, power=NULL, 
f2=NULL, peta2=NULL, dR2=NULL, R2=NULL)}
\arguments{
  \item{pc}{Number of parameters in the compact model; i.e., intercept + all parameters excluding the effect of interest;  This is the numerator df of the F test for the effect}
  \item{pa}{Number of parameters in the augmented model; i.e., the intercept and all parameters including the effect of interest}
  \item{N}{sample size}
  \item{alpha}{alpha for statistical test}
  \item{power}{power for statistical test}
  \item{f2}{f2 effect size}
  \item{peta2}{partial eta2 effect size}
  \item{dR2}{delta R2 effect size;  if provided must also specify R2}
  \item{R2}{Model R2, only need if using Delta R2 as effect size}
}
\value{
Returns either power or N from analysis
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{pwr.f2.test}
\examples{
modelPower(pc=3, pa=4, power=.90, peta2=.157)
modelPower(pc=1, pa=3, N=100, peta2=.157, alpha=.01)
} 
\keyword{manip}