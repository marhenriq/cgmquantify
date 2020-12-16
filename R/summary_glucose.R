summary_glucose <- function(df) {
  meanG = mean(df$glucose)
  medianG = median(df$glucose)
  minG = min(df$glucose)
  maxG = max(df$glucose)
  Q1G = quantile(df$glucose, 0.25)
  Q3G = quantile(df$glucose, 0.75)

  return(data.frame(meanG,
                    medianG,
                    minG,
                    maxG,
                    Q1G,
                    Q3G))

}
