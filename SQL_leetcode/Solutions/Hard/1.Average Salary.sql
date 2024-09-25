with cte1 as (select date_format(pay_date, '%Y-%m') AS pay_month as pay_month,department_id,
avg(amount) as avg_salary
from salary s 
join employee e on s.employee_id=e.employee_id
group by pay_month,department_id),

cte2 as (
    select date_format(pay_date, '%Y-%m') AS pay_month as pay_month,
avg(amount) as avg_company_salary
from salary 
group by pay_month
)

select a.pay_month,a.department_id,
case 
  when a.avg_salary > b.avg_company_salary then 'higher' 
  when a.avg_salary < b.avg_company_salary then 'less'
  else 'same' 
END as comparison
from cte1 a 
join cte2 b on a.pay_month=b.pay_month
   
#or

with cte1 as (
select date_format(pay_date, '%Y-%m') AS pay_month as pay_month,department_id,
avg(amount) (partition by date_format(pay_date, '%Y-%m'),department_id) as avg_salary,
avg(amount) (partition by date_format(pay_date, '%Y-%m')) as avg_company_salary
from salary s 
join employee e  using(employee_id))

select distinct
pay_month,department_id,
case 
  when avg_salary > avg_company_salary then 'higher' 
  when avg_salary < avg_company_salary then 'less'
  else 'same' 
END as comparison
from cte1 order by 1








