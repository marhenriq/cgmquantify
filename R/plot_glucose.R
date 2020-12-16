plot_glucose <- function(df_CGM) {
  ggplot(df_CGM) +
    geom_point(data = df_CGM, aes(x = time_of_day, y = glucose),
               col = "orange", cex = 0.5) +
    geom_line(data = df_CGM, aes(x = time_of_day, y = glucose),
              col = "orange") +
    facet_grid(Date ~ ., scale = "fixed") +
    theme_bw() +
    ylab("Glucose Level") +
    xlab("Time of Day") +
    labs(title = "CGM data for Participant #1")
}
