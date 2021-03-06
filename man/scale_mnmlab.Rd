% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_mnmlab.R
\name{scale_mnmlab}
\alias{scale_mnmlab}
\alias{mnmlab_pal}
\alias{scale_color_mnmlab}
\alias{scale_colour_mnmlab}
\alias{scale_fill_mnmlab}
\title{Color palette for McCall Lab plots
8 color scale created by [Martin Krzywinski's color blind palettes](http://mkweb.bcgsc.ca/colorblind/palettes.mhtml#page-container), adapted from [Wong, B. (2011) Nature Methods 8:441](https://www.nature.com/articles/nmeth.1618). Paul Tol palettes from https://personal.sron.nl/~pault/.}
\usage{
mnmlab_pal(palette)

scale_color_mnmlab(palette, ...)

scale_colour_mnmlab(palette, ...)

scale_fill_mnmlab(palette, ...)
}
\arguments{
\item{palette}{A palette function that when called with a single integer
argument (the number of levels in the scale) returns the values that
they should take (e.g., \code{\link[scales:hue_pal]{scales::hue_pal()}}).}

\item{...}{Further arguments passed to other methods}

\item{palette=}{Palette for color scale. Takes on the values martink8,
martink12, martink15, or martink48 for palettes by Martin K. Alternatively you
can supply highContrast, bright, vibrant, muted, pale, dark, or light for
palettes by Paul Tol. See reference for example images.}
}
\description{
Color palette for McCall Lab plots
8 color scale created by [Martin Krzywinski's color blind palettes](http://mkweb.bcgsc.ca/colorblind/palettes.mhtml#page-container), adapted from [Wong, B. (2011) Nature Methods 8:441](https://www.nature.com/articles/nmeth.1618). Paul Tol palettes from https://personal.sron.nl/~pault/.
}
\references{
Krzywinski, M. Designing for Color Blindess - Martin Krzywinski / Genome Sciences Center. http://mkweb.bcgsc.ca/colorblind/index.mhtml#page-container
Wong, B. (2011). Color blindness. In Nature Methods (Vol. 8, Issue 6, p. 441). https://doi.org/10.1038/nmeth.1618
Tol, Paul. Paul Tol's Notes: Qualitative Color Schemes. https://personal.sron.nl/~pault/
}
\seealso{
[ggplot2::scale_color_discrete][ggplot2::scale_fill_discrete]
}
