with t1 as
(
	select distinct sender_id, send_to_id
	from friend_request
), t2 as
(
	select distinct requester_id, accepter_id
	from request_accepted
)

Select 
ifnull((
        select distinct
        round((select count(*) from t2) / ( select count(*) from t1),2) from t1,t2
    ),0) 'accept_rate'