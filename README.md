# Qwest-Analytics-Dashboard-and-ML-Model
Final Project for UofT Data Analytics Bootcamp

## Selected Topic: the Streaming Video Industry

According to PwC's latest Global Entertainment & Media Outlook 2022, the streaming video industry was valued at $79.1 billion in revenues worldwide in 2021 and will continue to grow at a pace of 7-10% annually for the next few years. The big driver of opportunity is a major shift by all major players in the subscription video space (Netflix, Amazon Prime Video, Disney+, Paramount+, Peacock) to hybrid streaming models that combine lower-priced, ad-supported tiers with more premium, ad-free tiers.

Across the streaming video industry, content providers and distributors are moving into big data to analyze subscriber funnels and viewership patterns to optimize content production/acquisition costs, help with programming decisions, improve content recommendation to their users and ultimately drive subscriber and advertising revenue.

## Our Client

Our real-world client is an online distributor of online video based in Western Europe and specialized in music content, mostly full-length concerts and documentaries. They offer 3 advertising-backed, linear channels (free/no subscription), a premium subscription service and a large library of titles available for sale to other conventional channels.

Their channels are available worldwide and designed primarily for free, ad-funded platforms such as PlutoTV, Roku, YoutubeTV, Plex, Samsung TV Plus, LG Channels and other OEM services. Their premium SVOD service is available primarily through traditional pay-tv distributors and on a direct-to-consumer basis.

Each of the 3 channels (and each piece of content on the channels) are embedded with unique identifiers and markers 24/7 to automate and maximize advertising sales: position and duration of the ad breaks available, viewer profile, location by country, device, viewership history etc. All those parameters are used to customize the experience and offer as much audience targeting as possible to advertisers (who are then willing to spend more to reach a more targeted audience).

## Client's and Project's Objectives

As the Client rolls out their services across an increasing number of platforms around the world and the number of viewers increases as well, the amount of data collected daily skyrockets exponentially. At this stage in their development (3 years after commercial launch), the Client collects on average 120,000 lines of viewership data per day and up to twice as much advertising data depending on granularity. The Client is no longer able to cope with traditional Excel and PowerBI tools, and is now looking to hire one or more data analysts to take the company to the next level.

Our study will focus on viewership, programming and advertising revenue data for the 3 linear channels to help answer the following:
- identify viewership patterns by channel, content, country, platform... ;
- identify revenue trends and determine which channel/content/genre brings in more revenue, by country or region ;
- make revenue projections into the next 2 fiscal quarters ;
- make content recommendation based on internal content tags.

## Data
- 550 CSV files containing viewership data for 3 channels across 14 operators in 67 countries from 18Feb21 to 6Nov22
- 1 CSV file containing advertising revenue for their 3 channels across 19 main territories from 28Feb22 to 25Oct22
- Programming details, IDs, genres, tags
- Channels mapping
- Operators mapping
- Countries mapping

The data has been anonymized to preserve the confidentiality of the client.

## Communication Protocols (to be updated as we go)

- daily posts in the group Slack channel to assign tasks and keep track of progress
- video calls/huddles 2-3 times /week to solve blocking points together, review everyone's work and push to main branch

## Software & Resources (to be updated as we go)

python version ...
PostgreSQL version ...

## Methodology / Steps / Decisions made while cleaning (to be updated as we go)

- Merge all 550 viewership files into one
- Anonymize the data pertaining to channel and operator names
- in viewership data, in column A "channel", we kept the last string "XXX-XXX-XXX-huawei" as the operator name (conflicts and inconsistencies in the name format)
- 

## Provisional Database

Based on the data that we received and our initial EDA, we poject the database will look like the following:
<img src="Resources/ERD.png" height=200>

## Provisional Machine Learning Model

Revenue projections will be made following multiple regression anlyses based on the revenue table down to date and country level.
Content recommendations will follow a more advanced machine learning model (tbd)
