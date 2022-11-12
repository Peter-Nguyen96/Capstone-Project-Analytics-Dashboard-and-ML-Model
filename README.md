# Qwest-Analytics-Dashboard-and-ML-Model
Final Project for UofT Data Analytics Bootcamp

What we need for Week 1
- Selected topic
- Reason they selected the topic
- Description of the source of data
- Questions they hope to answer with the data
- Description of the communication protocols
- Present a provisional machine learning model that stands in for the final machine learning model, takes in data from the provisional database and outputs label for input data
- Present a provisional database that stands in for the final database with sample data that mimics the expected final database structure and is connected to the draft machine learning model


## Selected Topic: the Streaming Video Industry

According to PwC's latest Global Entertainment & Media Outlook 2022, the streaming video industry was valued at $79.1 billion in revenues worldwide and will continue to grow at a pace of 7-10% annually for the next few years. The big driver of opportunity will be a major shift by all major players in the subscription video space (Netflix, Amazon Prime Video, Disney+, Paramount+, Peacock) to hybrid streaming models that combine lower-priced, ad-supported tiers with more premium, ad-free tiers.

Across the streaming video industry, content providers and distributors are moving into big data to analyze subscriber funnels and viewership patterns to optimize content production/acquisition costs, help with programming decisions, improve content recommendation to their users and ultimately drive subscriber and advertising revenue.

## Our Client

Our real-world client is an online distributor of online video based in Western Europe and specialized in music content, mostly full-length concerts and documentaries. They offer 3 advertising-backed, linear channels (free/no subscription), a premium subscription service and a large library of titles available for sale to other conventional channels.

Their channels are available worldwide and designed primarily for free, ad-funded platforms such as PlutoTV, Roku, YoutubeTV, Plex, Samsung TV Plus, LG Channels and other OEM services. The premium SVOD service is available primarily through traditional pay-tv distributors and on a direct-to-consumer basis.

Each of the 3 channels (and each piece of content on the channels) are embedded with unique identifiers and markers throughout to automate and maximize advertising sales: position and duration of the ad breaks available, viewer profile, location by country, device, viewership history etc. All those parameters are used to customize the experience and offer as much audience targeting as possible to advertisers (who are then willing to spend more).

## Client's and Project's Objectives

As the Client rolls out their services across an increasing number of platforms around the world and the number of viewers increases as well, the amount of data collected daily skyrockets exponentially. At this stage in their development (3 years after commercial launch), the Client collects on average 120,000 lines of viewership data per day and up to 3 times as much advertising data depending on granularity. The Client is no longer able to analyze the data with traditional Excel and PowerBI tools, and is looking to hire one or more data analysts to take the company to the next level.

Our study will focus on viewership, programming and advertising revenue data for the 3 linear channels to help answer the following

## Data
- 550 CSV files containing viewership data for 3 channels across 14 operators in 67 countries from 18Feb21 to 6Nov22
- 1 CSV file containing advertising revenue for their 3 channels across 19 main territories from 28Feb22 to 25Oct22
- Programming details, IDs, genres, tags
- Channels mapping
- Operators mapping
- Countries mapping

The data has been anonymized to preserve the confidentiality of the client.

## Methodology / Steps / Decisions made while cleaning
- Merge all 550 viewership files into one
- Anonymize the data pertaining to channel and operator names

