#' Custom ggplot theme with white background
#'
#' @return plot (ggplot) with the theme
#' @export
#'
#' @param font_size Numeric. Default font size.
#' @param line_size Numeric. Default line size.
#' @param smaller_fraction Numeric. Some texts (e.g. axes ticks) will be the given fraction of the font size smaller.
#' @param axis_margin_fraction Numeric. Axis margin size will be calculated based on this fraction, the "smaller_fraction" and the font size.
#'
#' @examples
#' \dontrun{
#' data = data.frame(x = seq(1,200,10), y = seq(1,400,20))
#' ggplot2::ggplot(data, ggplot2::aes(x = x, y = y)) + ggplot2::geom_point() + white_theme()
#' }
#'

white_theme <- function(
    font_size = 10,
    line_size = 0.5,
    smaller_fraction = 0.8,
    axis_margin_fraction = 0.25) {

  smaller_size <- font_size * smaller_fraction
  half_size    <- font_size * 0.5
  quarter_size <- font_size * 0.25
  axis_margin_size  <- smaller_size * axis_margin_fraction

  theme <- ggplot2::theme(
    line = ggplot2::element_line(
      linewidth = line_size
    ),
    rect = ggplot2::element_rect(
      linewidth = line_size
    ),
    text = ggplot2::element_text(
      size = font_size),
    axis.line = ggplot2::element_line(
      linewidth = line_size
    ),
    axis.text.x = ggplot2::element_text(
      size = smaller_size,
      margin = ggplot2::margin(t = axis_margin_size)),
    axis.text.x.top = ggplot2::element_text(
      size = smaller_size,
      margin = ggplot2::margin(b = axis_margin_size)),
    axis.text.y = ggplot2::element_text(
      size = smaller_size,
      margin = ggplot2::margin(r = axis_margin_size)),
    axis.text.y.right = ggplot2::element_text(
      size = smaller_size,
      margin = ggplot2::margin(l = axis_margin_size)),
    axis.ticks.length = ggplot2::unit(quarter_size, "pt"),
    axis.title.x = ggplot2::element_text(
      margin = ggplot2::margin(t = quarter_size)),
    axis.title.x.top = ggplot2::element_text
    (margin = ggplot2::margin(b = quarter_size)),
    axis.title.y = ggplot2::element_text(
      angle = 90,
      margin = ggplot2::margin(r = quarter_size)),
    axis.title.y.right = ggplot2::element_text(
      angle = -90,
      margin = ggplot2::margin(l = quarter_size)),
    legend.spacing = ggplot2::unit(font_size, "pt"),
    legend.margin  = ggplot2::margin(0, 0, 0, 0),
    legend.key.size = ggplot2::unit(font_size, "pt"),
    legend.text = ggplot2::element_text(
      size = ggplot2::rel(smaller_fraction)),
    legend.title = ggplot2::element_text(),
    legend.justification = c("left", "center"),
    legend.box.margin = ggplot2::margin(0, 0, 0, 0),
    legend.box.spacing = ggplot2::unit(font_size, "pt"),
    strip.background = ggplot2::element_rect(fill = "grey80"),
    strip.text = ggplot2::element_text(
      size = ggplot2::rel(smaller_fraction),
      margin = ggplot2::margin(quarter_size)),
    strip.text.y = ggplot2::element_text(
      angle = -90
    ),
    strip.placement = "outside",
    strip.switch.pad.grid = ggplot2::unit(quarter_size, "pt"),
    strip.switch.pad.wrap = ggplot2::unit(quarter_size, "pt"),
    panel.background = ggplot2::element_blank(),
    plot.background = ggplot2::element_blank(),
    plot.title = ggplot2::element_text(
      face = "bold",
      margin = ggplot2::margin(b = half_size)),
    plot.caption = ggplot2::element_text(
      size = ggplot2::rel(smaller_fraction),
      margin = ggplot2::margin(t = half_size)),
    plot.tag = ggplot2::element_text(
      face = "bold"
    ),
    plot.tag.position = c(0, 1),
    plot.margin = ggplot2::margin(quarter_size)
  )
  return(theme)
}
