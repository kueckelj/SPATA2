% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getA-G.R
\name{getCCD}
\alias{getCCD}
\alias{getCCD,SPATA2-method}
\alias{getCCD,SpatialData-method}
\title{Obtain center to center distance}
\usage{
getCCD(object, ...)

\S4method{getCCD}{SPATA2}(object, unit = NULL, as_numeric = FALSE, round = FALSE)

\S4method{getCCD}{SpatialData}(object, unit = NULL, as_numeric = FALSE, round = FALSE)
}
\arguments{
\item{object}{An object of class \code{\link{SPATA2}} or, in case of S4 generics,
objects of classes for which a method has been defined.}

\item{...}{Used to absorb deprecated arguments or functions.}

\item{unit}{Character value or \code{NULL}. If character, specifies
the unit in which the distance is supposed to be returned.
Use \code{validUnitsOfLength()} to obtain  all valid input options.}
}
\value{
Character value.
}
\description{
Extracts the center to center distance from
barcode-spots depending on the method used.
}
