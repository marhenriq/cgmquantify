interdaycv <- function(df) {
  cvx = (std(df$glucose) / mean(df$glucose)) * 100
  return(cvx)
}

interdaysd <- function(df) {
  interdaysd = std(df$glcuose)
  return(interdaysd)
}
