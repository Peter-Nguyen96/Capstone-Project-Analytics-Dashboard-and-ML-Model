-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Clean_Advertising_Data_v3" (
    "date" date   NOT NULL,
    "country" varchar   NOT NULL,
    "region" varchar   NOT NULL,
    "operator" varchar   NOT NULL,
    "channel" varchar   NOT NULL,
    "pod_fill_rate" float   NOT NULL,
    "endpoint_requests" int   NOT NULL,
    "bid_requests" int   NOT NULL,
    "bid_responses" int   NOT NULL,
    "bid_wons" int   NOT NULL,
    "impressions" int   NOT NULL,
    "revenue" float   NOT NULL,
    "CPM" float   NOT NULL,
    "requested_pod_duration" int   NOT NULL,
    "requested_pod_droprate" flaot   NOT NULL,
    "filled_pod_duration" float   NOT NULL,
    "filled_pod_droprate" float   NOT NULL,
    "delivered_pod_duration" float   NOT NULL
);

CREATE TABLE "Cleaned_Viewership" (
    "date" date   NOT NULL,
    "Feed_Name" varchar   NOT NULL,
    "country" varchar   NOT NULL,
    "Device_Type" varchar   NOT NULL,
    "Session_Count" int   NOT NULL,
    "Total_Viewership_Seconds" int   NOT NULL,
    "Unique_Viewers" int   NOT NULL,
    "region" varchar   NOT NULL
);

CREATE TABLE "cleaned_merged_minute_aggregation_final" (
    "time" date   NOT NULL,
    "country" carchar   NOT NULL,
    "total_sessions" int   NOT NULL,
    "total_session_duration_seconds" int   NOT NULL,
    "channel" varchar   NOT NULL,
    "operator" varchar   NOT NULL,
    "cleaned_content_id" varchar   NOT NULL,
    "genre" varchar   NOT NULL,
    "region" varchar   NOT NULL
);

ALTER TABLE "Clean_Advertising_Data_v3" ADD CONSTRAINT "fk_Clean_Advertising_Data_v3_date" FOREIGN KEY("date")
REFERENCES "Cleaned_Viewership" ("date");

ALTER TABLE "Clean_Advertising_Data_v3" ADD CONSTRAINT "fk_Clean_Advertising_Data_v3_country" FOREIGN KEY("country")
REFERENCES "cleaned_merged_minute_aggregation_final" ("country");

ALTER TABLE "Cleaned_Viewership" ADD CONSTRAINT "fk_Cleaned_Viewership_country_region" FOREIGN KEY("country", "region")
REFERENCES "Clean_Advertising_Data_v3" ("country", "region");

ALTER TABLE "cleaned_merged_minute_aggregation_final" ADD CONSTRAINT "fk_cleaned_merged_minute_aggregation_final_channel_operator_region" FOREIGN KEY("channel", "operator", "region")
REFERENCES "Clean_Advertising_Data_v3" ("channel", "operator", "region");

