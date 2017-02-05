#' Change factors by supplying a list of new values
#'
#' @param x A factor vector
#' @param ... Key value pairs for replacing old factor values with new values
#'
#' @return A factor vector
#' @export
#'
#' @examples
#' change_levels(as.factor(mtcars$cyl), beast = '8', lame = c('4', '6'))
change_levels <- function(x, ...) {
  stopifnot(is.factor(x))
  x <- as.factor(x)
  levels(x) <- list(...)
  x
}
