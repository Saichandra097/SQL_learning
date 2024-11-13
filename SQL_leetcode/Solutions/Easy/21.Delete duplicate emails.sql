with cte as t1(
select * , row_number() over(partion by Email order by Id ) as rk
from person
)

delete from 
person where id in ( select t1.ID from t1 where t1.rk>1)