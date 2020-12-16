J_index <- function(df) {
  J = 0.001*((mean(df$glucose) + std(df$glucose))*2)
  return(J)
}
