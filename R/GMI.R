#' Compute Glycemic Management Indicator
#'
#' This function computes the estimated GMI
#'
#' @param df Data frame read through readfile
#' @return A numeric value representing GMI
#' @examples
#' mydatafile <- system.file("extdata", "my_data_file.csv", package = "cgmquantify")
#' mydata <- readfile(mydatafile)
#' GMI(mydata)
#' @export

GMI <- function(df) {
  GMI = 3.31 + (0.02392*mean(df$glucose))
  return(GMI)
}

