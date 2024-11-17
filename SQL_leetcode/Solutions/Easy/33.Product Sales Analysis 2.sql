Select a.product_id, sum(a.quantity) as total_quantity
from sales a
join
product b
on a.product_id = b.product_id
group by a.product_id