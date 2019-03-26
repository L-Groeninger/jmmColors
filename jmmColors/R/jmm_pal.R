#' Function to interpolate a jmm color palette (jmm_pal)
#'
#' This function interpolates a jmm color palette to have n colors
#' @param  palette the corporate color palette to use
#' @param n the number of colors the color palette should have
#' @return The n hex code colors
#' @export
#' @examples
#' \dontrun{
#'
#' jmm_palettes <- list(
#' `main  = jmm_cols("blue", "green", "yellow"),
#'
#' `cool  = jmm_cols("dark blue", "blue"),
#'
#' `cool grey  = jmm_cols("blue", "light grey"),
#'
#' `grey blue = jmm_cols("light grey", "dark blue"),
#'
#' `green  = jmm_cols("green", "yellow"),
#'
#' `grey  = jmm_cols("light grey", "dark grey")
#' )
#'
#' jmm_pal("cool")(5)
#' }

jmm_pal <- function(palette = "main", reverse = FALSE, ...) {

    jmm_palettes <- list(
        `main`  = jmm_cols("blue", "green", "yellow"),

        `cool`  = jmm_cols("dark blue", "blue"),

        `cool grey`  = jmm_cols("blue", "light grey"),

        `grey blue` = jmm_cols("light grey", "dark blue"),

        `green`  = jmm_cols("green", "yellow"),

        `grey`  = jmm_cols("light grey", "dark grey")
    )

    pal <- jmm_palettes[[palette]]

    if (reverse) pal <- rev(pal)

    colorRampPalette(pal, ...)
}
