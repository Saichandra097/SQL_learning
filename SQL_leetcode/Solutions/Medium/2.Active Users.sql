with cte1 as (
    select id , login_date,
    lead(login_date,4) over(partition by id order by login_date) as date_5 
    from (select distinct  * from Logins) b
)

select distinct a.id , a.name 
from t1
inner join accounts a 
on t1.id=a.id
where datediff(t1.date_5,login_date)-4
order by id