#' Compute Interday Coefficient of Variation
#'
#' This function computes the interday coefficient of variation
#'
#' @param df Data frame read through readfile
#' @return A numeric value representing interday cv
#' @examples
#' mydatafile <- system.file("extdata", "my_data_file.csv", package = "cgmquantify")
#' mydata <- readfile(mydatafile)
#' interdaycv(mydata)
#' @export
#' @import stats
interdaycv <- function(df) {
  cvx = (sd(df$glucose) / mean(df$glucose)) * 100
  return(cvx)
}


#' Compute Interday Standard Deviation
#'
#' This function computes the interday standard deviation
#'
#' @param df Data frame read through readfile
#' @return A numeric value representing interday sd
#' @export
#' @examples
#' mydatafile <- system.file("extdata", "my_data_file.csv", package = "cgmquantify")
#' mydata <- readfile(mydatafile)
#' interdaysd(mydata)
#' @import stats
interdaysd <- function(df) {
  interdaysd = stats::sd(df$glucose)
  return(interdaysd)
}

