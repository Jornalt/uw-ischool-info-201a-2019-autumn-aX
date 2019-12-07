#aX graphics
library(ggplot2)
library(tidyr)
library(dplyr)
library(lubridate)

df_epa <- read.csv("epa_date.csv", stringsAsFactors = FALSE, na.rm = TRUE)

CO_plot <- ggplot(df_epa, aes(x = as.Date(Date), y = CO, color = "CO")) + 
  geom_line() +
  geom_smooth(method = "lm", alpha = .15)

LC25_plot <- ggplot(df_epa, aes(x = as.Date(Date), y = LC25, color = "LC25")) + 
  geom_line() +
  geom_smooth(method = "lm", alpha = .15)

NO2_plot <- ggplot(df_epa, aes(x = as.Date(Date), y = NO2, color = "NO2")) + 
  geom_line() +
  geom_smooth(method = "lm", alpha = .15)

O3_plot <- ggplot(df_epa, aes(x = as.Date(Date), y = O3, color = "O3")) + 
  geom_line() +
  geom_smooth(method = "lm", alpha = .15)

PM10_plot <- ggplot(df_epa, aes(x = as.Date(Date), y = PM10, color = "PM10")) + 
  geom_line() +
  geom_smooth(method = "lm", alpha = .15)

SO2_plot <- ggplot(df_epa, aes(x = as.Date(Date), y = SO2, color = "SO2")) + 
  geom_line() +
  geom_smooth(method = "lm", alpha = .15)
        