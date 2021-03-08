#' Color palette for McCall Lab plots

#' 8 color scale created by [Martin Krzywinski's color blind palettes](http://mkweb.bcgsc.ca/colorblind/palettes.mhtml#page-container), adapted from [Wong, B. (2011) Nature Methods 8:441](https://www.nature.com/articles/nmeth.1618).
#' @references
#' Krzywinski, M. Designing for Color Blindess - Martin Krzywinski / Genome Sciences Center. Retrieved March 5, 2021, from http://mkweb.bcgsc.ca/colorblind/index.mhtml#page-container
#' Wong, B. (2011). Color blindness. In Nature Methods (Vol. 8, Issue 6, p. 441). https://doi.org/10.1038/nmeth.1618

#' @seealso [ggplot2::scale_color_discrete][ggplot2::scale_fill_discrete]
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams scales::manual_pal
#' @param palette= Palette for color scale. Takes on the values martink8,
#'                 martink12, martink15, or martink48. See reference for images.
#' @param ... Further arguments passed to other methods
#' @name scale_mccall_lab
#'

martink_pals <- list(martink8 = c(
  "#2271B2", "#359B73", # honolulu blue # ocean green
  "#E69F00", "#3DB7E9", # gamboge # summer sky
  "#F748A5", "#F0E442", # barbie pink # parisdaisy
  "#D55E00", "#000000" # bamboo # black
),
martink12 = c(
  "#9F0162", "#009f81", # jazzberry jam # jeepers creepers
  "#FF5AAF", "#00FCCF", # barbie pink # aquamarine
  "#8400CD", "#008DF9", # french violet # dodger blue
  "#00C2F9", "#FFB2FD", # capri # plum
  "#A40122", "#E20134", # carmine # alizarin crimson
  "#FF6E3A", "#FFC33B"  # outrageous orange # bright spark
),
martink15 = c(
  "#68023F", "#008169", #tyrian purple #deep sea
  "#EF0096", "#00DCB5", #persian rose #aquamarine
  "#FFCFE2", "#003C86", #azalea #congress blue
  "#9400E6", "#009FFA", #veronica #bleu de france
  "#FF71FD", "#7CFFFA", #shocking pink #electric blue
  "#6A0213", "#008607", #rosewood #india green
  "#F60239", "#00E307", #tractor red #radioactive green
  "#FFDC3D"  #gargoyle gas
),
martink48 = c(
  "#560133", "#003D30", # mulberry # sherwood green
  "#450270", "#00306F", # christalle # madison
  "#5A000F", "#004002", # rosewood # british racing green
  "#790149", "#005745", # french plum # deep opal
  "#65019F", "#00489E", # purple heart # tory blue
  "#7E0018", "#005A01", # hot chile # san felix
  "#9F0162", "#00735C", # jazzberry jam # robin hood
  "#8400CD", "#005FCC", # french violet # royal blue
  "#A40122", "#007702", # alabama crimson # bilbao
  "#C7007C", "#009175", # magenta $ elf green
  "#A700FC", "#0079FA", # electric purple # azure
  "#CD022D", "#009503", # amaranth red # india green
  "#EF0096", "#00AF8E", # persian rose # jeepers creepers
  "#DA00FD", "#009FFA", # psychadelic purple # bleu de france
  "#F60239", "#00B408", # carmine # kelly green
  "#FF5AAF", "#00CBA7", # barbie pink # aquamarine
  "#FF3CFE", "#00C2F9", # fuchsia # capri
  "#FF6E3A", "#00D302", # burning orange # vivid harlequin
  "#FF9DC8", "#00EBC1", # amaranth pink # vivid opal
  "#FF92FD", "#00E5F8", # violet # aqua blue
  "#FFAC3B", "#00F407", # frenzee # radioactive green
  "#FFCFE2", "#86FFDE", # azalea # light turquoise
  "#FFCCFE", "#7CFFFA", # pale mauve # electric blue
  "#FFDC3D", "#AFFF2A"  # gargoyle gas # lime
)
)


mccall_lab_pal <- function(palette = c("martink8", "martink12", "martink15", "martink48")) {
  if(palette == "martink8"){
    pal <- martink_pals[[1]]
  }
  if(palette == "martink12"){
    pal <- martink_pals[[2]]
  }
  if(palette == "martink15"){
    pal <- martink_pals[[3]]
  }
  if(palette == "martink48"){
    pal <- martink_pals[[4]]
  }
  scales::manual_pal(pal)
}

#' @rdname scale_mccall_lab
#' @export
scale_color_mccall_lab <- function(palette = c("martink8", "martink12", "martink15", "martink48"),...) {
  ggplot2::discrete_scale("color", "mccall_lab", mccall_lab_pal(palette), ...)
}
#' @rdname scale_mccall_lab
#' @export
scale_colour_mccall_lab <- scale_color_mccall_lab

#' @rdname scale_mccall_lab
#' @export
scale_fill_mccall_lab <- function(palette = c("martink8", "martink12", "martink15", "martink48"),...) ggplot2::discrete_scale("fill", "mccall_lab", mccall_lab_pal(palette = c("martink8", "martink12", "martink15", "martink48")), ...)
