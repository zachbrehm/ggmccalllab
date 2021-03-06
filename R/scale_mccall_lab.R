mk8_palette <- c(
  "#2271B2", # honolulu blue
  "#359B73", # ocean green
  "#E69F00", # gamboge
  "#3DB7E9", # summer sky
  "#F748A5", # barbie pink
  "#F0E442", # parisdaisy
  "#D55E00", # bamboo
  "#000000" # black
)

#' Color palette for McCall Lab plots

#' 8 color scale created by [Martin Krzywinski's color blind palettes](http://mkweb.bcgsc.ca/colorblind/palettes.mhtml#page-container), adapted from [Wong, B. (2011) Nature Methods 8:441](https://www.nature.com/articles/nmeth.1618).
#' @references
#' Krzywinski, M. Designing for Color Blindess - Martin Krzywinski / Genome Sciences Center. Retrieved March 5, 2021, from http://mkweb.bcgsc.ca/colorblind/index.mhtml#page-container
#' Wong, B. (2011). Color blindness. In Nature Methods (Vol. 8, Issue 6, p. 441). https://doi.org/10.1038/nmeth.1618

#' @seealso [ggplot2::scale_color_discrete][ggplot2::scale_fill_discrete]
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams scales::manual_pal
#' @param ... Further arguments passed to other methods
#' @name scale_mccall_lab
#'

mccall_lab_pal <- function() {
  scales::manual_pal(mk8_palette)
}

#' @rdname scale_mccall_lab
#' @export
scale_color_mccall_lab <- function(...) {
  ggplot2::discrete_scale("color", "mccall_lab", mccall_lab_pal(), ...)
}
#' @rdname scale_mccall_lab
#' @export
scale_colour_mccall_lab <- scale_color_mccall_lab

#' @rdname scale_mccall_lab
#' @export
scale_fill_mccall_lab <- function(...) ggplot2::discrete_scale("fill", "mccall_lab", mccall_lab_pal(), ...)
