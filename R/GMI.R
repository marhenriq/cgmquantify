GMI <- function(df) {
  GMI = 3.31 + (0.02392*mean(df$glucose))
  return(GMI)
}
