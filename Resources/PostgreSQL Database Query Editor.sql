CREATE TABLE cleaned_merged_minute_aggregation (
	time timestamp,
	country TEXT,
	total_sessions float, 
	total_session_duration_seconds float,
	channel TEXT,
	operator TEXT, 
	cleaned_content_id TEXT, 
	genre TEXT
);