intradaycv <- function(df) {
  intradaycv = vector()
  for (i in unique(df$Date)) {
    intradaycv <- append(intradaycv, ((interdaycv(filter(df, Date == i)))))
  }

  intradaycv_mean = mean(intradaycv)
  intradaycv_median = median(intradaycv)
  intradaycv_sd = std(intradaycv)

  return(data.frame(intradaycv_mean, intradaycv_median, intradaycv_sd))
}


intradaysd <- function(df) {
  intradaysd = vector()
  for (i in unique(df$Date)) {
    intradaysd <- append(intradaysd, std(filter(df, Date == i)$glucose))
  }
  intradaysd_mean = mean(intradaysd)
  intradaysd_median = median(intradaysd)
  intradaysd_sd = std(intradaysd)

  return(data.frame(intradaysd_mean, intradaysd_median, intradaysd_sd))
}

intradaysd(df_CGM)
