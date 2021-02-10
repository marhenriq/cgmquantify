#' Compute J-index
#'
#' This function computes J-index, a glycemic variability metrix
#'
#' @param df Data frame read through readfile
#' @return A numeric value representing J-index
#' @export
#' @examples
#' mydatafile <- system.file("extdata", "my_data_file.csv", package = "cgmquantify")
#' mydata <- readfile(mydatafile)
#' J_index(mydata)
#' @import stats
J_index <- function(df) {
  J = 0.001*((mean(df$glucose) + sd(df$glucose))^2)
  return(J)
}
