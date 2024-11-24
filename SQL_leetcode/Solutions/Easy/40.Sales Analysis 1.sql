select a.seller_id
(Select seller_id, 
dense_rank() over(order by sum(price) desc) as rk
from Sales
group by seller_id) a
where a.rk=1
