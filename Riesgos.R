#Installing Packages
install.packages("dplyr")
install.packages("ggplot2")
install.packages("magrittr") 
install.packages("tsibble")
install.packages("forecast")
install.packages("skimr")
install.packages("feasts")
install.packages("ggfortify")

install.packages("tidyverse")

#Loading Packages
library(dplyr)
library(ggplot2)
library(magrittr)
library(tsibble)
library(forecast)
library(skimr)
library(feasts) 
library(ggfortify)

#Descriptive Analysis
skimr::skim(econ)

summary(econ)

#Histogram of Unemployment
econ %>%
  ggplot2::ggplot() +
  ggplot2::aes(x = uempmed) +
  ggplot2::geom_histogram() +
  labs(x = "Unemployment", title = "Monthly Unemployment Rate in US between 1967 to 2015")

#Line Graph of Unemployment
econ %>%
  ggplot2::autoplot(uempmed) +
  ggplot2::geom_smooth()
