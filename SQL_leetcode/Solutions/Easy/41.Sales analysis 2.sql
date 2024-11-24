with sales_p as (
    select buyer_id,product_name 
    from Sales s 
    join Products p 
    on s.product_id = p.product_id
)

select distinct buyer_id 
from sales_p 
where product_name="s8"
and buyer_id not in (
    select buyer_id from sales_p where product_name="iphone"
)