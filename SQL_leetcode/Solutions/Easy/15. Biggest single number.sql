select max(a.num) as num
from(
    select num , count(num) as "count"
    from my_number
    group by num
    having count = 1
) a
