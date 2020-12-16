readfile <- function(filename) {
  df_CGM <- read.csv(filename,
                     header = TRUE, stringsAsFactors = FALSE)

  df_CGM <- data.frame(df_CGM$Timestamp..YYYY.MM.DDThh.mm.ss.,
                       df_CGM$Glucose.Value..mg.dL.)
  colnames(df_CGM) <- c("Time", "glucose")
  df_CGM$Time <- as.POSIXct(df_CGM$Time, format = "%Y-%m-%dT%H:%M:%OS", origin = "1970-01-01")
  df_CGM <- df_CGM %>%
    mutate(Date = date(Time)) %>%
    mutate(time_of_day = hms::as_hms(Time)) %>%
    mutate(type_of_event = ifelse(glucose > 180, 1,
                                  ifelse(glucose < 70, -1, 0))) # threshold and label is for hyper-/hypoglycemia identification

  return(df_CGM)
}
