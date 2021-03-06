% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summary_glucose.R
\name{summary_glucose}
\alias{summary_glucose}
\title{Compute Glucose Summary Statistics}
\usage{
summary_glucose(df)
}
\arguments{
\item{df}{Data frame read through readfile}
}
\value{
A dataframe containing the mean, median, minimum,
maximum, quartile1, and quartile3 of glucose levels
}
\description{
This function computes the mean, median, minimum, maximum,
first quartile, and the third quartile of an indidividual's
overall glucose levels
}
\examples{
mydatafile <- system.file("extdata", "my_data_file.csv", package = "cgmquantify")
mydata <- readfile(mydatafile)
summary_glucose(mydata)
}
