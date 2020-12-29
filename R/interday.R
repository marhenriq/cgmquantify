#' Compute Interday Coefficient of Variation
#'
#' This function computes the interday coefficient of variation
#'
#' @param df Data frame read through readfile
#' @return A numeric value representing interday cv
#' @export
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
interdaysd <- function(df) {
  interdaysd = sd(df$glcuose)
  return(interdaysd)
}

