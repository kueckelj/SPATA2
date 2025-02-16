% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/g.R
\name{ggpLayerPoints}
\alias{ggpLayerPoints}
\alias{ggpLayerPoints,SPATA2-method}
\alias{ggpLayerPoints,SpatialData-method}
\alias{ggpLayerPoints,data.frame-method}
\title{Add the observations to the surface plot}
\usage{
ggpLayerPoints(object, ...)

\S4method{ggpLayerPoints}{SPATA2}(
  object,
  alpha_by = NULL,
  color_by = NULL,
  pt_alpha = 0.9,
  pt_clr = "lightgrey",
  pt_size = NULL,
  scale_pt_size = TRUE,
  clrp = NULL,
  clrp_adjust = NULL,
  clrsp = NULL,
  smooth = FALSE,
  smooth_span = 0.2,
  normalize = NULL,
  transform_with = NULL,
  xrange = NULL,
  yrange = NULL,
  outline = FALSE,
  outline_fct = c(1.75, 2.75),
  unit = NULL,
  breaks = NULL,
  expand = TRUE,
  scale_fct = 1,
  use_scattermore = FALSE,
  sctm_pixels = c(1024, 1024),
  add_labs = FALSE,
  bcs_rm = NULL,
  na_rm = FALSE,
  geom = "point",
  verbose = NULL,
  ...
)

\S4method{ggpLayerPoints}{SpatialData}(
  object,
  img_name = activeImage(object),
  alpha_by = NULL,
  color_by = NULL,
  pt_alpha = 0.9,
  pt_clr = "lightgrey",
  pt_size = 1,
  clrp = "sifre",
  clrp_adjust = NULL,
  clrsp = "inferno",
  scale_pt_size = TRUE,
  xrange = NULL,
  yrange = NULL,
  unit = NULL,
  breaks = NULL,
  expand = TRUE,
  bcs_rm = NULL,
  outline = FALSE,
  outline_fct = c(1.75, 2.75),
  na_rm = FALSE,
  scale_fct = 1,
  use_scattermore = FALSE,
  sctm_pixels = c(1024, 1024),
  add_labs = FALSE,
  geom = "point",
  ...
)

\S4method{ggpLayerPoints}{data.frame}(
  object,
  alpha_by = NULL,
  color_by = NULL,
  pt_alpha = 0.9,
  pt_clr = "lightgrey",
  pt_size = 1,
  scale_fct = 1,
  use_scattermore = FALSE,
  sctm_pixels = c(1024, 1024),
  bcs_rm = NULL,
  geom = "point",
  na_rm = FALSE
)
}
\arguments{
\item{object}{An object of class \code{\link{SPATA2}} or, in case of S4 generics,
objects of classes for which a method has been defined.}

\item{...}{Additional arguments given to \code{scale_color_add_on()}.}

\item{color_by}{Character value. The \link[=concept_variables]{variables} by which
to color the data points.}

\item{pt_alpha}{Numeric value. Specifies the degree of transparency of all points.}

\item{pt_clr}{Character value. Specifies the color of all points.}

\item{pt_size}{Numeric value. Specifies the size of all points.}

\item{clrp}{Character value. Specifies the color palette to be used to represent
groups of discrete variables. Run \code{validColorPalettes()} to obtain valid
input options.}

\item{clrp_adjust}{Named character vector or NULL. If character, it adjusts the
color palette that is used to represent the groups. Names of the input vector must refer
to the group and the respective named element denotes the color with which to
represent the group.}

\item{clrsp}{Character value. Specifies the color spectrum to be used to represent
continuous values of numeric variables. Run \code{validColorSpectra()} to obtain
valid input options.}

\item{smooth}{Logical. If TRUE, a loess fit is used to smooth the values.}

\item{smooth_span}{Numeric value. Controls the degree of smoothing.
Given to argument \code{span} of \code{stats::loess()}.}

\item{normalize}{Logical. If set to TRUE values will be scaled to 0-1.

Hint: Variables that are uniformly expressed can not be scaled and are discarded.}

\item{transform_with}{List or \code{NULL.} If list, can be used to transform continuous variables before usage.
Names of the list slots refer to the variable. The content of the slot refers to the transforming functions.
E.g if the variable of interest is \emph{GFAP} gene expression, the following would work:

\itemize{
\item{Single function:}{ \code{transform_with = log10}},
\item{Multiple functions:}{ \verb{transform_with = list(GFAP = list(log10, log2)}}
}

In case of plotting:
Useful if you want to apply more than one transformation on variables mapped to
plotting aesthetics. Input for \code{transform_with} is applied before the
respective \code{<aes>_trans} argument.}

\item{xrange, yrange}{\link[=concept_distance_measure]{Distance vector} of length
two or \code{NULL}. If not \code{NULL}, specifies the x- and y-range to which
the spatial output is cropped. E.g. \code{xrange = c(200, 500)} results in
the two dimensional space being cropped from x-coordinate 200px up to
x-coordinate 500px. If \code{NULL}, the original range is used.}

\item{unit}{The desired unit. Defaults to the unit
in which the original size of the image of the spatial method is
provided. Obtain valid input options with \code{validUnitsOfLengthSI()}.}

\item{breaks}{Specifies where the breaks are set. Labels are plotted in the unit
specified in \code{unit}. Valid input:

\itemize{
\item{\code{NULL}:}{ No specification. Five breaks are set equally distributed. Does not work with STS/IAS related plots as
the range is taken from the whole image.}
\item{\code{vector}:}{ Vector of distance measures. Breaks are set for axes denoted in \code{which}. (Defaults to both, x and y.)}
\item{\code{list}:}{ List with slots \emph{x} and \emph{y}. Vector of distance measures to set each axis specifically.}
}}

\item{expand}{Specifies how the axis are expanded. Using \code{expand} of \code{ggplot2::scale_x/y_continuous()}.
Valid input:

\itemize{
\item{\code{NULL} or \code{TRUE}:}{ No specification. Default is used.}
\item{\code{FALSE}:}{ No expansion.}
\item{\code{vector}:}{ Numeric vector of length two. Input is set for axes denoted in \code{which}. (Defaults to both, x and y.)}
\item{\code{list}:}{ List with slots \emph{x} and \emph{y}. Numeric vector of length two, used for each axis specifically.}
}}

\item{use_scattermore}{Logical value. If \code{TRUE}, data points are plotted with
\code{scattermore::geom_scattermore()} which allows quick plotting of several
thousand data points. If the number of data points plotted is bigger than
10.000 it is used anyway.}

\item{add_labs}{Logical. If \code{TRUE}, adds x- and y-labs to the plot.}

\item{bcs_rm}{Character vector or \code{NULL}. If character, specifies the observations
to be removed prior to analysis or visualization by their barcode.}

\item{verbose}{Logical. If \code{TRUE}, informative messages regarding
the computational progress will be printed.

(Warning messages will always be printed.)}

\item{img_name}{Character value. The name of the image of interest.
If \code{NULL}, the \link[=concept_active]{active} image is chosen by default. Either way, must
be one of \code{\link[=getImageNames]{getImageNames()}}.}

\item{spot_alpha, spot_size, spot_clr}{Parameters to set the aesthetics
alpha, size, and color of the spots. Arguments \code{alpha_by} and \code{color_by}
are prioritized.}
}
\value{
\code{ggpLayer*()}-functions return lists of \code{ggproto} objects
that can be added to ggplots via the \code{+} operator. In most of the cases
they are supposed to be added to plots created with the \code{plotSurface*()}
family.
}
\description{
Adds the \link[=concept_observations]{data points} (beads, cells, spots, etc.) of the object
to the plot. This function is actually the working horse of \code{\link[=plotSurface]{plotSurface()}}.
}
\examples{

library(SPATA2)
library(tidyverse)

data("example_data")

object <- loadExampleObject("UKF275T")

ggplot() +
 ggpLayerPoints(object, color_by = "HM_HYPOXIA")


}
