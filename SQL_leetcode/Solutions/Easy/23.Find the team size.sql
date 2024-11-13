select 
employee_id,a.team_size
from Employee e
join 
(SELECT 
team_id,count(*) as team_size
from Employee 
group by team_id
) a 
on e.team_id= a.team_id
