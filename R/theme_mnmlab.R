#' McCall Lab Theme
#'
#' A theme for [ggplot2] with color blind friendly palettes for use
#' members of the McCall Lab.
#'
#' @seealso [ggplot2::theme]
#' @param text_size Font size for axis text. Legend text will scale by 0.8. Defaults to 17pt.
#' @param title_size Font size for title text. Subtitle will scale by 0.9 and axis title will scale by 0.8. Defaults to 21pt.
#' @param text_color Color for all text in plot. Defaults to black.
#' @param panel_grid_linetype Line type for grid lines in plot. Defaults to 18, a dotted line with 1px on followed by 8px off.
#' @param base_theme Underlying theme to build from. Defaults to linedraw, displaying a margin outline for the plot and gridlines.
#'
#' @examples
#' library(ggplot2)
#' library(palmerpenguins)
#'
#'
#' ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
#'     scale_color_mnmlab(palette = "martink8") +
#'     theme_mnmlab()
#'
#' @export

theme_mnmlab <- function(
  text_size = 11,
  title_size = 14,
  text_color = "black",
  panel_grid_linetype = "18",
  base_theme = ggplot2::theme_linedraw()
) {
  base_theme + ggplot2::theme(
    text = ggplot2::element_text(
      family = "sans",
      size = text_size,
      color = "black"
    ),
    axis.title = ggplot2::element_text(
      family = "sans",
      size = ggplot2::rel(0.8),
      color = "black"
    ),
    title = ggplot2::element_text(
      family = "serif",
      size = title_size,
      color = "black"
    ),
    plot.subtitle = ggplot2::element_text(
      family = "serif",
      size = ggplot2::rel(0.9),
      color = "grey20",
      #face = "italic"
    ),
    legend.title = ggplot2::element_text(
      family = "sans",
      size = ggplot2::rel(0.8),
      color = "black"
    ),
    legend.text = ggplot2::element_text(
      family = "sans",
      size = ggplot2::rel(0.8),
      color = "black"
    ),
    panel.grid = ggplot2::element_line(
      color = "black",
      linetype = "18",
      size = 4
    )
  )
}
