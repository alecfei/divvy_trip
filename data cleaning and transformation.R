# Import library
library(tidyverse)

# Suppress warnings
suppressMessages(tidyverse_conflicts)

# Read bike station data
divvy_station_2013 <- read_csv('/home/hduser/projects for portfolios/divvy_data/Divvy_Stations_2013.csv')
spec(divvy_station_2013)
head(divvy_station_2013)
str(divvy_station_2013)
summary(divvy_station_2013)
View(divvy_station_2013)

divvy_station_2017_2 <- read_csv('/home/hduser/projects for portfolios/divvy_data/Divvy_Stations_2017_Q3Q4.csv')
View(divvy_station_2017_2)
spec(divvy_station_2017_2)

# Read bike trip data
divvy_trip_2013 <- read_csv('/home/hduser/projects for portfolios/divvy_data/Divvy_Trips_2013.csv')
spec(divvy_trip_2013)
summary(divvy_trip_2013)
View(divvy_trip_2013)

