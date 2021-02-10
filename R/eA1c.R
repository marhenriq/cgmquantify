#' Compute Estimated A1c
#'
#' This function computes the estimated A1c, according to
#' the American Diabetes Association calculator
#'
#' @param df Data frame read through readfile
#' @return A numeric value representing eA1c
#' @examples
#' mydatafile <- system.file("extdata", "my_data_file.csv", package = "cgmquantify")
#' mydata <- readfile(mydatafile)
#' eA1c(mydata)
#' @export

eA1c <- function(df) {
  eA1c = (46.7 + mean(df$glucose))/28.7
  return(eA1c)
}


