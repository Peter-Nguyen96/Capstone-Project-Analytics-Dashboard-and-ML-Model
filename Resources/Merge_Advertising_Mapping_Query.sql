### Updating and merging the advertising table and  merged mapping viewership Query

ALTER TABLE cleaned_advertising_data
rename COLUMN _date to date;
SELECT  ad.date,
		ad.country ad_country,
		ad.region,
		ad.operator  ad_operator,
		ad.channel ad_channel,
		ad.pod_fill_rate,
		ad.endpoint_requests,
		ad.bid_requests,
		ad.bid_responses,
		ad.bid_wons,
		ad.impressions,
		ad.revenue,
		ad.CPM,
		ad.requested_pod_duration,
		ad.requested_pod_droprate,
		ad.filled_pod_duration,
		ad.filled_pod_droprate,
		ad.delivered_pod_duration,
		mm.date date ,
		mm.feed_name,
		mm.country mm_country,
		mm.device_type,
		mm.session_count,
		mm.total_viewership_seconds,
		mm.unique_viewers,
		mm.region,
		mm.channel mm_channel,
		mm.operator mm_operator
INTO merged_mapping_viewership_advertising
FROM cleaned_advertising_data AS ad
FULL OUTER JOIN merged_mapping_viewership as mm
ON (ad.date = mm.date) AND (ad.operator = mm.operator) AND (ad.channel = mm.channel) And(ad.country = mm.country)

