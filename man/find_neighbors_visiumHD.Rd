% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f.R
\name{find_neighbors_visiumHD}
\alias{find_neighbors_visiumHD}
\title{Find Neighbors in VisiumHD Data}
\usage{
find_neighbors_visiumHD(coords_df, verbose = TRUE)
}
\arguments{
\item{verbose}{Logical, whether to display a progress bar (default is TRUE).}

\item{df}{A dataframe containing barcodes and spatial coordinates.}
}
\value{
A dataframe with identified neighbors or NULL if no neighbors are found.
}
\description{
This function identifies the closest neighbors for each barcode based on spatial coordinates.
}
\keyword{internal}
