#' Corporate JMM colors
#'
#' This function extracts JMM colors as hex codes
#' @param  ... Corporate colors
#' @return The hex code
#' @export
#' @examples
#' \dontrun{
#'
#' jmm_colors <- c(
#' `dark blue  = "#123549",
#' `green      = "#7AD651",
#' `blue       = "#2f97c4",
#' `yellow     = "#f1c600",
#' `light grey = "#D9D9D9",
#' `dark grey  = "#A3A3A3")
#'
#' jmm_cols("blue")
#' }

jmm_cols <- function(...) {
    jmm_colors <- c(
        `dark blue`  = "#123549",
        `green`      = "#7AD651",
        `blue`       = "#2f97c4",
        `yellow`     = "#f1c600",
        `light grey` = "#D9D9D9",
        `dark grey`  = "#A3A3A3")

    cols <- c(...)

    if (is.null(cols))
    return (jmm_colors)

jmm_colors[cols]
}

