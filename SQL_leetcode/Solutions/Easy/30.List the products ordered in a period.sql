select product_name, a.unit
from Products join (
 select  product_id,sum(unit) as total_units
 from Orders
 where month(order_date)=2 
 group by product_id
 having sum(unit)>=100
) a
using (product_id)

