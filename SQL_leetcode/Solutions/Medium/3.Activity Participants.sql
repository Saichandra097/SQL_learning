with cte1 as (
    select activity,count(*) as "count"
    from Friends
    group by activity
)

select activity 
from 
cte1 
where count NOT IN (
(select min(count) from cte1 ),
select max(count) from cte1)