% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adj-aZ.R
\name{asMolecularAssay}
\alias{asMolecularAssay}
\alias{asMolecularAssay,Assay5-method}
\alias{asMolecularAssay,Assay-method}
\title{Transform miscellaneous objects to MolecularAssay objects}
\usage{
asMolecularAssay(object, ...)

\S4method{asMolecularAssay}{Assay5}(object, modality = "undefined", active_mtr = "counts")

\S4method{asMolecularAssay}{Assay}(object, modality = "undefined", active_mtr = "counts")
}
\arguments{
\item{object}{Any object for which a method has been defined.}
}
\value{
An object of class \code{MolecularAssay}
}
\description{
This S4 generic converts miscellaneous objects to into a \code{\link{MolecularAssay}}
object.
}
