#' Construction of the jmm color fill scales (scale_fill_jmm)
#'
#' This function constructs the jmm color fill scales
#' @param  palette the corporate color palette to use
#' @param  reverse should the color palette be dispayed in a reverse order?
#' @export
#' @examples
#' \dontrun{
#'
#' ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
#'     geom_bar() +
#'     theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
#'     scale_fill_jmm(palette = "cool", guide = "none")
#'
#' }

scale_fill_jmm <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
    pal <- jmm_pal(palette = palette, reverse = reverse)

    if (discrete) {
        discrete_scale("fill", paste0("jmm_", palette), palette = pal, ...)
    } else {
        scale_fill_gradientn(colours = pal(256), ...)
    }
}

