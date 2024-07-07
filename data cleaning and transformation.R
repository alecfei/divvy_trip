# Suppress warnings
suppressMessages(tidyverse_conflicts)

# Import library
library(tidyverse)

# Read data
divvy_station_2013 <- read_csv('/home/hduser/projects for portfolios/divvy_data/Divvy_Stations_2013.csv')
head(divvy_station_2013)
