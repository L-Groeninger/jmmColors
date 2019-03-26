#' Construction of the jmm color scales (scale_color_jmm)
#'
#' This function constructs the jmm color scales
#' @param  palette the corporate color palette to use
#' @param  reverse should the color palette be dispayed in a reverse order?
#' @export
#' @examples
#' \dontrun{
#'
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
#'     geom_point(size = 4) +
#'     scale_color_jmm()
#'
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Sepal.Length)) +
#'     geom_point(size = 4, alpha = .6) +
#'     scale_color_jmm(discrete = FALSE, palette = "grey")
#'
#' }

scale_color_jmm <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
    pal <- jmm_pal(palette = palette, reverse = reverse)

    if (discrete) {
        discrete_scale("colour", paste0("jmm_", palette), palette = pal, ...)
    } else {
        scale_color_gradientn(colours = pal(256), ...)
    }
}


