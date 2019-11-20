s_df <- read.csv(file = "data/gun-violence-data_01-2013_03-2018.csv",header = TRUE, stringsAsFactors = FALSE)


library(stringr)
library(plotly)
library(dplyr)
library(tidyr)
library(ggplot2)
library(gganimate)
library(hrbrthemes)

s_df <- s_df%>%
  select(incident_id,date,state, city_or_county, address, n_killed, n_injured, longitude, latitude)

s_df$n_killed <- as.numeric(s_df$n_killed, na.exclude(s_df$n_killed))
s_df$n_injured <- as.numeric(s_df$n_injured, na.exclude(s_df$n_injured))

range_of_year <- seq(2013,2018)

state_impacts <- s_df %>%
  group_by(state) %>%
  summarize(total_impacts = sum(n_killed) + sum(n_injured)) %>%
  select(state, total_impacts)

n_killed_n_injured <- s_df%>%
  mutate(year = as.numeric(substr(s_df$date, 1, 4))) %>%
  group_by(year)%>%
  summarize(injured_num = sum(n_injured), killed_num = sum(n_killed))

tidy_num <- n_killed_n_injured%>%
  gather(key = "year_value", value = "n_injured")

  
  


  