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

The client has made the following available to us:
- 550 CSV files containing viewership data for 3 channels across 14 operators in 67 countries from 18Feb21 to 6Nov22
- 1 CSV file containing advertising revenue for their 3 channels across 19 main territories from 28Feb22 to 25Oct22
- Programming details, IDs, genres, tags
- Channels mapping
- Operators mapping
- Countries mapping

The data has been anonymized to preserve the confidentiality of the client.


## Communication Protocols:

- General Communcations: General communications and questions will be done through the Slack app in a group text channel. This will be where quick technical questions and general discussion will take place
- Project Mapping and Deliverables: Primary communcation regarding big picture project mapping and segmentation of deliverables into stories to be completed from SCRUM or AGILE Project management discussions will occur in group calls via Slack app voice channel.  Summarization of notes from each session will be posted in .txt or .docx format in the Slack app group text channel. These files should be eventually uploaded into Documentation foler in main branch
- Commits and Code Peer Review: All collaborators will be able to create pull requests or accept pull requests. All collaborators will be able to commit their own code, and peer review other code before merging with main branch. Main branch edits can be performed by anyone invited as a collaborator until the project is public. Repository cannot go public until final review by the data provider or anyone employed by the data provider. Code review comments can be sent through general communications protocol as .txt or .docx, but should eventually be uploaded into Documentation/Internal Code Review folder in main branch.  Polished code documentation and methodology will be uploaded to README.md.
- Other Communications: Other communications such as communications with the data provider or with instructors will be conducted through whichever communication platform requested by the other party. Here other party is defined as anyone who is not a repository collaborator.


## Software & Resources

Python:
- Data Cleanup: Python 3.7.13, 3.9.13
- Exploratory Data Analysis: Python 3.7.13, 3.9.13, Microsoft Excel
	- Libraries Used: PANDAS, Matplotlib, numpy, sqlalchemy
- Machine Learning: Python 3.9.13
	- Libraries Used: ... 
- Data Storage: Amazon AWS: S3, RDS
	- PostgreSQL: pgAdmin4 6.8 


## Methodology / Steps / Decisions made while cleaning (to be updated as we go)

Minute Level Aggregation Table:
- Merge all 550 viewership files into one
- Anonymize the data pertaining to channel and operator names using anonymization key table. (CONFIDENTIAL DATA, NOT AVAILABLE TO PUBLIC)
	- Applied a function to each row to find string in list of anonymization key table for both channel and operator under unanonymized and now removed 'channel' column
	- Code should be refactored in future revisions or before deployment to improve speed. Currently takes 500 minutes to run for loop for each function.
- Anonymized 'content_id' column containing exact name of media content provided using Media Library key from data provider for programs and generated an anonymization key table for playlists. (CONFIDENTIAL DATA, NOT AVAILABLE TO PUBLIC)
	- Applied regex filters to obtain program or playlist numbers and created new columns containing anonymization key
	- Merged columns with .fillna
- Used Anonymized 'content_id' to match with genre data from data provider.
	- Merged columns on anonymized 'content_id' and removed extra columns.
	- Method was applied to 52 million rows with about 3000 rows of anonymized data keys.  Method of using PANDAS .merge (similar to SQL or Excel VLOOKUP) is faster by about 250x
- Final DataFrame was exported as .csv for development purposes, but should be uploaded to PostgreSQL database.

Advertising Data (42,045 rows):
- drop columns as indicated by the client: "'bid_timeouts_rate", "render_rate", "fillrate", "avg_winning_bid (‚Ç¨)" and "avg_imp_ecpm (‚Ç¨)"
- convert date column from 'object' to 'date' with to_datetime
- drop rows that contain either all null values OR an "endpoint_request" value and all null values otherwise (853 rows)
- drop rows without a "country" value (12 rows)
- convert country codes to country names, and add a "region" column
- create new columns for CPM and pod drop rates
- replace "no viewership data" values in "channel" and "operator" columns with "unknown" (7,217 rows)


## Database

Based on the data that we received and our initial EDA, we poject the database will look like the following after data cleaning:

<img src="Initial EDA/Images and Screenshots/ERD v2.png" height=200>

- Data Storage and Handling was done via Amazon AWS RDS and S3
- Data Storage Service was connected to PostgreSQL database accessed using pgAdmin4
- Cleaned data was uploaded to database using local installation of PySpark

## Provisional Machine Learning Model

Revenue projections will be made following multiple regression analyses based on the revenue table down to date and country level.
Content recommendations will follow a more advanced machine learning model (tbd)

## TRIANGLE Update #1
- Dropped the faulty advertsing table due to improper data types.
- Created a query to properly format the advertising data table, in order to load the csv file into it.

## TRIANGLE Update #2
- Created a query to merge the advertising data with the merged viewership and mapping data.


## Dashboard Blueprint

The blueprint outline for the dashboard was completing using Google Slides.  It can be assessed via the following link:

(https://docs.google.com/presentation/d/10TsZtGvvyuwiergr2YL65wGyHtwb6KW2b7WdqUAZ7wc/edit#slide=id.g197f91e436d_0_76)

The dashboard blueprint can also be accessed in pdf format from the link below:

[Dashboard Blueprint PDF](https://github.com/Peter-Nguyen96/Capstone-Project-Analytics-Dashboard-and-ML-Model/blob/60ea90400cb2adca390fe1d4aa5950c5387db118/Dashboard_Blueprint/Dashboard_Blueprint_v4.pdf)


