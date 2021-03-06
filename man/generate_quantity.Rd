% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_quantity.R
\name{generate_quantity}
\alias{generate_quantity}
\title{Add new quantity to shinystan object}
\usage{
generate_quantity(sso, param1, param2, fun, new_name)
}
\arguments{
\item{sso}{A \code{\link[=as.shinystan]{shinystan object}}.}

\item{param1}{Name of first parameter as character string.}

\item{param2}{Optional. Name of second parameter as character string.}

\item{fun}{Function to call, i.e. \code{function(param1)} or 
\code{function(param1,param2)}. See Examples, below.}

\item{new_name}{Name for the new parameter as character string.}
}
\value{
sso, updated. See Examples.
}
\description{
Add to shinystan object a new parameter as a function of one or two existing
parameters.
}
\examples{
# Using example shinystan object 'eight_schools'
sso <- eight_schools
sso <- generate_quantity(sso, fun = function(x) x^2, 
                         param1 = "tau", new_name = "tau_sq")
sso <- generate_quantity(sso, fun = "-", 
                         param1 = "theta[1]", param2 = "theta[2]", 
                         new_name = "theta1minus2")
                         
}
\seealso{
\code{\link{drop_parameters}} to remove parameters from a
  \code{shinystan} object.
}
