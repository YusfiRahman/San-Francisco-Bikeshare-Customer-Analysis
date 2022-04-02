SELECT 
trip_id,
duration_sec, 
start_date,
subscriber_type,
member_gender 
FROM `bigquery-public-data.san_francisco_bikeshare.bikeshare_trips` 
WHERE start_date > '2017-01-01'
ORDER BY start_date ASC;