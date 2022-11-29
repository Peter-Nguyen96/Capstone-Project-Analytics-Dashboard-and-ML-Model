## Created table with proper format for advertising data

CREATE TABLE cleaned_advertising_data (
		date DATE,
		country VARCHAR,
		region VARCHAR,
		operator VARCHAR,
		channel VARCHAR,
		pod_fill_rate FLOAT,
		endpoint_requests INT,
		bid_requests INT,
		bid_responses INt,
		bid_wons INT,
		impressions INT,
		revenue FLOAT,
		CPM FLOAT,
		requested_pod_duration FLOAT,
		requested_pod_droprate FLOAT,
		filled_pod_duration Float,
		filled_pod_droprate FLOAT,
		delivered_pod_duration FLOAT)
		
