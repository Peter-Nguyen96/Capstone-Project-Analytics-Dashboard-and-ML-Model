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

# Preliminary multi-variate analysis

# Univariate linear regression regions

res <- model.matrix(~region, data = regions)
head(res[,-1])

model <- lm(total_viewership_seconds ~ region, data = regions)
summary(model)$coef

# Univariate linear regression device_type

res <- model.matrix(~device_type, data = regions)
head(res[,-1])

model <- lm(total_viewership_seconds ~ device_type, data = regions)
summary(model)$coef

# Univariate linear regression session_count

model <- lm(total_viewership_seconds ~ session_count, data = regions)
summary(model)$coef

# Univariate linear regression unique_viewers

model <- lm(total_viewership_seconds ~ unique_viewers, data = regions)
summary(model)$coef

# Multivariate linear regression for total viewership

model <- lm(total_viewership_seconds ~ region + device_type + session_count + unique_viewers, data = regions)
summary(model)$coef