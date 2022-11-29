# load package

library(dplyr)

# import csv and read as a table

ViewershipData <- read.csv(file='//Users/jordanbowman/Desktop/Final Project Bootcamp/ViewershipData.csv',check.names=F,stringsAsFactors = F)

ViewershipCountries <- read.csv ('//Users/jordanbowman/Desktop/Final Project Bootcamp/MappingViewershipCountries.csv', check.names=F,stringsAsFactors = F)

# Converting column titles

names(ViewershipData)[names(ViewershipData) == "Feed_Name"] <- "feed_name"

names(ViewershipData)[names(ViewershipData) == "Country"] <- "country"

names(ViewershipData)[names(ViewershipData) == "Device Type"] <- "device_type"

names(ViewershipData)[names(ViewershipData) == "Session Count"] <- "session_count"

names(ViewershipData)[names(ViewershipData) == "Total Viewership Seconds"] <- "total_viewership_seconds" 

names(ViewershipData)[names(ViewershipData) == "Unique Viewers"] <- "unique_viewers"

ViewershipData

names(ViewershipCountries)[names(ViewershipCountries) == "Country"] <- "country"

names(ViewershipCountries)[names(ViewershipCountries) == "Region"] <- "region"

ViewershipCountries

# Merge two tables

regions <- merge(x = ViewershipData, y = ViewershipCountries, by = 'country')

# Summary statistics for regions 

regions %>%
  group_by (region) %>%
  summarise(cnt = n()) %>%
  arrange(desc(cnt)) %>%
  as.data.frame() 

regions  %>%
  group_by (device_type, region) %>%
  summarise(cnt = n()) %>%
  arrange(desc(cnt)) %>%
  as.data.frame() 

regions %>%
  group_by (feed_name, region) %>%
  summarise(cnt = n()) %>%
  arrange(desc(cnt)) %>%
  as.data.frame() 

# a. Descriptive stats for session_count by Region

regions %>%
  group_by (region) %>%
  summarise(Mean = mean(session_count)) %>%
  arrange(desc(Mean)) %>%
  as.data.frame() 

regions %>%
  group_by (region) %>%
  summarise(Median = median(session_count)) %>%
  arrange(desc(Median)) %>%
  as.data.frame() 

regions %>%
  group_by (region) %>%
  summarise(Variance = var(session_count)) %>%
  arrange(desc(Variance)) %>%
  as.data.frame() 

regions %>%
  group_by (region) %>%
  summarise(SD = sd(session_count)) %>%
  arrange(desc(SD)) %>%
  as.data.frame() 

# b. Descriptive stats for total viewership seconds by region

regions %>%
  group_by (region) %>%
  summarise(Mean = mean(total_viewership_seconds)) %>%
  arrange(desc(Mean)) %>%
  as.data.frame() 

regions %>%
  group_by (region) %>%
  summarise(Median = median(total_viewership_seconds)) %>%
  arrange(desc(Median)) %>%
  as.data.frame() 

regions %>%
  group_by (region) %>%
  summarise(Variance = var(total_viewership_seconds)) %>%
  arrange(desc(Variance)) %>%
  as.data.frame() 

regions %>%
  group_by (region) %>%
  summarise(SD = sd(total_viewership_seconds)) %>%
  arrange(desc(SD)) %>%
  as.data.frame() 

# c. Descriptive stats for unique viewers by region

regions %>%
  group_by (region) %>%
  summarise(Mean = mean(unique_viewers)) %>%
  arrange(desc(Mean)) %>%
  as.data.frame() 

regions %>%
  group_by (region) %>%
  summarise(Median = median(unique_viewers)) %>%
  arrange(desc(Median)) %>%
  as.data.frame() 

regions %>%
  group_by (region) %>%
  summarise(Variance = var(unique_viewers)) %>%
  arrange(desc(Variance)) %>%
  as.data.frame() 

regions %>%
  group_by (region) %>%
  summarise(SD = sd(unique_viewers)) %>%
  arrange(desc(SD)) %>%
  as.data.frame() 
