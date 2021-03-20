#' Color palette for McCall Lab plots

#' 8 color scale created by [Martin Krzywinski's color blind palettes](http://mkweb.bcgsc.ca/colorblind/palettes.mhtml#page-container), adapted from [Wong, B. (2011) Nature Methods 8:441](https://www.nature.com/articles/nmeth.1618).
#' @references
#' Krzywinski, M. Designing for Color Blindess - Martin Krzywinski / Genome Sciences Center. http://mkweb.bcgsc.ca/colorblind/index.mhtml#page-container
#' Wong, B. (2011). Color blindness. In Nature Methods (Vol. 8, Issue 6, p. 441). https://doi.org/10.1038/nmeth.1618

#' @seealso [ggplot2::scale_color_discrete][ggplot2::scale_fill_discrete]
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams scales::manual_pal
#' @param palette= Palette for color scale. Takes on the values martink8,
#'                 martink12, martink15, or martink48 for palettes by Martin K.
#'                 Alternatively, highContrast, bright, vibrant, muted, pale,
#'                 dark, or light can be supplied for palettes by Paul Tol.
#' @param ... Further arguments passed to other methods
#' @name scale_mnmlab
#'

mnmlab_pal <- function(palette) {
  if(startsWith(palette, "martink")){
    pal <- martink_pals[[palette]]
  }
  else{
    pal <- paulTol_pals[[palette]]
  }
  scales::manual_pal(pal)
}

#' @rdname scale_mnmlab
#' @export
scale_color_mnmlab <- function(palette,...) {
  ggplot2::discrete_scale("color", "mnmlab", mnmlab_pal(palette), ...)
}
#' @rdname scale_mnmlab
#' @export
scale_colour_mnmlab <- scale_color_mnmlab

#' @rdname scale_mnmlab
#' @export
scale_fill_mnmlab <- function(palette,...) {
  ggplot2::discrete_scale("fill", "mnmlab", mnmlab_pal(palette), ...)
}
