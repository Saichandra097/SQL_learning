with t1 as (
    select *,max(month) over(partition by Id ) as recent_month
    from Employee
)


select Id,month,
sum(Salary) over(partition by Id order by month rows between 2 preceding and current row) as salary
from t1 
where month<recent_month
order by Id , month desc