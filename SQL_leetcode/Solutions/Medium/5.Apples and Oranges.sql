select 
sale_date,sold-sold_num
(select 
sale_date as sale,fruit,sold_num as sold
from Sales
where fruit == "apples") a
join 
(
select * 
    from 
    Sales where fruit ="oranges"
) b
ON a.sale_date = b.sale
