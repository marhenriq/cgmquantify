eA1c <- function(df) {
  eA1c = (46.7 + mean(df$glucose))/28.7
  return(eA1c)
}
