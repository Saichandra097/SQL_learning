SELECT extra , count(DISTINCT post_id) AS report_count
FROM Actions
where action_date = DATE_SUB("2019-07-5", INTERVAL 1 DAY) and action='report'
GROUP BY extra 
