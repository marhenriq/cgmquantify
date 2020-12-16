MGE <- function(df, sd = 1) {
  up = mean(df$glucose) + sd*std(df$glucose)
  dw = mean(df$glucose) - sd*std(df$glucose)
  MAGE = mean(filter(df, glucose >= up | glucose <= dw)$glucose)
  return(MAGE)

}

MGN <- function(df) {
  up = mean(df$glucose) + std(df$glucose)
  dw = mean(df$glucose) - std(df$glucose)
  MAGN = mean(filter(df, glucose <= up | glucose >= dw)$glucose)
  return(MAGN)

}

