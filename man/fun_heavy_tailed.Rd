% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fun_heavy_tailed.R
\name{fun_heavy_tailed}
\alias{fun_heavy_tailed}
\title{Simulate Heavy Tailed Independent Functional Data}
\usage{
fun_heavy_tailed(n, nbasis, df = 3, basis = NULL, rangeval = c(0, 1), ...)
}
\arguments{
\item{n}{Sample size of generated functional data. A strictly positive integer}

\item{nbasis}{Number of basis functions used to represent functional observations}

\item{df}{Degrees of freedom of the T-distribution to construct the functional
observations. The default value is 3}

\item{basis}{A functional basis object defining the basis. It can be the class of
\code{basisfd}, \code{fd}, \code{fdPar}. As a default it is set to be a Fourier basis}

\item{rangeval}{A vector of length 2 containing the initial and final values of the
interval over which the functional data object can be evaluated. As a default it is
set to be [0,1].}

\item{...}{Further arguments to pass}
}
\value{
An independent functional data sample (class \code{fd}) containing:
\item{coefs}{
The coefficient array
}
\item{basis}{
A basis object
}
\item{fdnames}{
A list containing names for the arguments, function values
and variables
}
}
\description{
It generates a heavy tail independent functional observations of sample size n
}
\details{
The implementation of this function is very similar to \code{\link{fun_IID}}. The heavy tail functional observations are generated
based on a linear combination of basis functions where the \eqn{i}-th linear combination coefficient has a t-distribution with \code{df} - degrees
of freedom.
}
\examples{
fdata1 = fun_heavy_tailed(n=100, nbasis=25)
fdata2 = fun_heavy_tailed(n=100, nbasis=25, df=4)

}
\references{
Ramsay, James O., and Silverman, Bernard W. (2006), \emph{Functional
Data Analysis, 2nd ed.}, Springer, New York.

Aue A., Rice G., Sonmez O. (2017), \emph{Detecting and dating structural breaks in
functional data without dimension reduction} (https://arxiv.org/pdf/1511.04020.pdf)
}
\seealso{
\code{\link{Data2fd}, \link{fun_IID}, \link{fun_AR}, \link{fun_MA}}
}
