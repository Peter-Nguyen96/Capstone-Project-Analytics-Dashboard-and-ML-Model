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

# Qualitative tests for normality

library(ggplot2)
ggplot(ViewershipData,aes(x=session_count)) + geom_density() #visualize distribution using density plot

ggplot(ViewershipData,aes(x=total_viewership_seconds)) + geom_density()

ggplot(ViewershipData,aes(x=unique_viewers)) + geom_density()

# Quantitative tests for normality

#shapiro.test(ViewershipData$session_count) # rejected because sample size is above 5000

ks.test(ViewershipData$session_count, "pnorm")

ks.test(ViewershipData$total_viewership_seconds, "pnorm")

ks.test(ViewershipData$unique_viewers, "pnorm")


