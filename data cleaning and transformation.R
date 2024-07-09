# Suppress warnings
suppressMessages(library(tidyverse))

# Import library
library(tidyverse)

# Read latest bike station data
divvy_station_2017 <- read_csv('/home/hduser/projects for portfolios/divvy_data/Divvy_Stations_2017_Q3Q4.csv')
View(divvy_station_2017)
spec(divvy_station_2017) # extracts the full column specification from a tibble (dataframe in Python)
unique(divvy_station_2017$city)
n_distinct(divvy_station_2017$city)
unique(divvy_station_2017$...8)
divvy_station_2017 <- divvy_station_2017 %>% select(-...8) # drop column

# covert online_date to datetime type
divvy_station_2017 <- divvy_station_2017 %>%
  mutate(online_date = mdy_hm(online_date))

head(divvy_station_2017)

dim(divvy_station_2017) # dimension of the tibble
glimpse(divvy_station_2017)
str(divvy_station_2017)
summary(divvy_station_2017)

# Detailed summary for character columns
character_columns <- sapply(divvy_station_2017, is.character)
lapply(divvy_station_2017[, character_columns], table)

# Groupby date
station_number_byyear <- divvy_station_2017 %>% 
  group_by(year(online_date)) %>%
  summarise(station_count = n()) %>%
  rename(year = `year(online_date)`)

print(station_number_byyear)

# Read bike trip data
divvy_trip_202406 <- read_csv('/home/hduser/projects for portfolios/divvy_data/202406-divvy-tripdata.csv')
spec(divvy_trip_202406)
summary(divvy_trip_202406)
View(divvy_trip_202406)

# Read bike trip data
divvy_trip_2013 <- read_csv('/home/hduser/projects for portfolios/divvy_data/Divvy_Trips_2013.csv')
View(divvy_trip_2013)


