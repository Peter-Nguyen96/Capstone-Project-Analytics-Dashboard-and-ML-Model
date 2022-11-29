# load package

library(dplyr)

# import csv and read as a table

ViewershipData <- read.csv(file='//Users/jordanbowman/Desktop/Final Project Bootcamp/ViewershipData.csv',check.names=F,stringsAsFactors = F)

# Converting column titles

names(ViewershipData)[names(ViewershipData) == "Feed_Name"] <- "feed_name"

names(ViewershipData)[names(ViewershipData) == "Country"] <- "country"

names(ViewershipData)[names(ViewershipData) == "Device Type"] <- "device_type"

names(ViewershipData)[names(ViewershipData) == "Session Count"] <- "session_count"

names(ViewershipData)[names(ViewershipData) == "Total Viewership Seconds"] <- "total_viewership_seconds" 

names(ViewershipData)[names(ViewershipData) == "Unique Viewers"] <- "unique_viewers"

ViewershipData

# Summary statistics for session_count

summary_session_count <- ViewershipData %>% summarize(Mean = mean(session_count), Median = median(session_count), Variance = var(session_count), SD = sd(session_count), .groups = 'keep')

# Summary statistics for total_viewership_seconds

summary_total_viewership_seconds <- ViewershipData %>% summarize(Mean = mean(total_viewership_seconds), Median = median(total_viewership_seconds), Variance = var(total_viewership_seconds), SD = sd(total_viewership_seconds), .groups = 'keep')

# Summary statistics for unique_viewers

summary_unique_viewers <- ViewershipData %>% summarize(Mean = mean(unique_viewers), Median = median(unique_viewers), Variance = var(unique_viewers), SD = sd(unique_viewers), .groups = 'keep')

# Summary statistics for country

ViewershipData %>%
  group_by (country) %>%
  summarise(cnt = n()) %>%
  arrange(desc(cnt)) %>%
  as.data.frame() 

# a. Descriptive stats for session_count by Country

ViewershipData %>%
  group_by (country) %>%
  summarise(Mean = mean(session_count)) %>%
  arrange(desc(Mean)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (country) %>%
  summarise(Median = median(session_count)) %>%
  arrange(desc(Median)) %>%
  as.data.frame() 
  
ViewershipData %>%
  group_by (country) %>%
  summarise(Variance = var(session_count)) %>%
  arrange(desc(Variance)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (country) %>%
  summarise(SD = sd(session_count)) %>%
  arrange(desc(SD)) %>%
  as.data.frame() 

# b. Descriptive stats for total viewership seconds by country

ViewershipData %>%
  group_by (country) %>%
  summarise(Mean = mean(total_viewership_seconds)) %>%
  arrange(desc(Mean)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (country) %>%
  summarise(Median = median(total_viewership_seconds)) %>%
  arrange(desc(Median)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (country) %>%
  summarise(Variance = var(total_viewership_seconds)) %>%
  arrange(desc(Variance)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (country) %>%
  summarise(SD = sd(total_viewership_seconds)) %>%
  arrange(desc(SD)) %>%
  as.data.frame() 

# c. Descriptive stats for unique viewers by country

ViewershipData %>%
  group_by (country) %>%
  summarise(Mean = mean(unique_viewers)) %>%
  arrange(desc(Mean)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (country) %>%
  summarise(Median = median(unique_viewers)) %>%
  arrange(desc(Median)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (country) %>%
  summarise(Variance = var(unique_viewers)) %>%
  arrange(desc(Variance)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (country) %>%
  summarise(SD = sd(unique_viewers)) %>%
  arrange(desc(SD)) %>%
  as.data.frame() 

# Summary stastics for device type

ViewershipData %>%
  group_by (device_type) %>%
  summarise(cnt = n()) %>%
  arrange(desc(cnt)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (device_type, country) %>%
  summarise(cnt = n()) %>%
  arrange(desc(cnt)) %>%
  as.data.frame() 

# a. Descriptive stats for session_count by device type

ViewershipData %>%
  group_by (device_type) %>%
  summarise(Mean = mean(session_count)) %>%
  arrange(desc(Mean)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (device_type) %>%
  summarise(Median = median(session_count)) %>%
  arrange(desc(Median)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (device_type) %>%
  summarise(Variance = var(session_count)) %>%
  arrange(desc(Variance)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (device_type) %>%
  summarise(SD = sd(session_count)) %>%
  arrange(desc(SD)) %>%
  as.data.frame() 

# b. Descriptive stats for total viewership seconds by device type

ViewershipData %>%
  group_by (device_type) %>%
  summarise(Mean = mean(total_viewership_seconds)) %>%
  arrange(desc(Mean)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (device_type) %>%
  summarise(Median = median(total_viewership_seconds)) %>%
  arrange(desc(Median)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (device_type) %>%
  summarise(Variance = var(total_viewership_seconds)) %>%
  arrange(desc(Variance)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (country) %>%
  summarise(SD = sd(total_viewership_seconds)) %>%
  arrange(desc(SD)) %>%
  as.data.frame() 

# c. Descriptive stats for unique viewers by device type

ViewershipData %>%
  group_by (device_type) %>%
  summarise(Mean = mean(unique_viewers)) %>%
  arrange(desc(Mean)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (device_type) %>%
  summarise(Median = median(unique_viewers)) %>%
  arrange(desc(Median)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (device_type) %>%
  summarise(Variance = var(unique_viewers)) %>%
  arrange(desc(Variance)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (device_type) %>%
  summarise(SD = sd(unique_viewers)) %>%
  arrange(desc(SD)) %>%
  as.data.frame() 

# Summary stastics for feed type

ViewershipData %>%
  group_by (feed_name) %>%
  summarise(cnt = n()) %>%
  arrange(desc(cnt)) %>%
  as.data.frame() 

# Summary of feed by country 

ViewershipData %>%
  group_by (feed_name, country) %>%
  summarise(cnt = n()) %>%
  arrange(desc(cnt)) %>%
  as.data.frame() 

# Summary of feed by device type

ViewershipData %>%
  group_by (feed_name, device_type) %>%
  summarise(cnt = n()) %>%
  arrange(desc(cnt)) %>%
  as.data.frame() 

# a. Descriptive stats for session_count by feed

ViewershipData %>%
  group_by (feed_name) %>%
  summarise(Mean = mean(session_count)) %>%
  arrange(desc(Mean)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (feed_name) %>%
  summarise(Median = median(session_count)) %>%
  arrange(desc(Median)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (feed_name) %>%
  summarise(Variance = var(session_count)) %>%
  arrange(desc(Variance)) %>%
  as.data.frame() 

ViewershipData %>%
  group_by (feed_name) %>%
  summarise(SD = sd(session_count)) %>%
  arrange(desc(SD)) %>%
  as.data.frame() 

