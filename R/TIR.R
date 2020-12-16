TIR <- function(df, sd = 1, sr = 5) {
  up = mean(df$glucose) + sd*std(df$glucose)
  dw = mean(df$glucose) - 1*std(df$glucose)
  TIR = nrow(filter(df, glucose <= up | glucose >= dw)) * sr
  return(TIR)
}
