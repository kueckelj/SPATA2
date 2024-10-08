% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setA-Z.R
\name{setSpatialAnnotation}
\alias{setSpatialAnnotation}
\alias{setSpatialAnnotation,SPATA2-method}
\alias{setSpatialAnnotations}
\alias{setSpatialAnnotations,SPATA2-method}
\title{Set SpatialAnnotation objects}
\usage{
setSpatialAnnotation(object, ...)

\S4method{setSpatialAnnotation}{SPATA2}(object, spat_ann, ...)

setSpatialAnnotations(object, ...)

\S4method{setSpatialAnnotations}{SPATA2}(object, spat_anns, ...)
}
\arguments{
\item{object}{An object of class \code{\link{SPATA2}} or, in case of S4 generics,
objects of classes for which a method has been defined.}

\item{...}{Used to absorb deprecated arguments or functions.}

\item{spat_ann}{An object of class \code{\link{SpatialAnnotation}}.}

\item{spat_anns}{A list of objects of class \code{\link{SpatialAnnotation}}.}
}
\description{
Sets spatial annotations in the correct slot. Expects a
valid spatial annotation and does not conduct any further checks or
adjustments.
}
\note{
\code{\link{GroupAnnotation}}, \code{\link{NumericAnnotation}}, \code{\link{ImageAnnotation}} are
derivatives of the \code{SpatialAnnotation} class and are valid inputs, too!
}
\keyword{internal}
