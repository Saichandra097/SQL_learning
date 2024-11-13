select customer_number
(SELECT customer_number,
Rank() over(order by count(customer_number) desc ) as Rk
FROM orders 
group by customer_number
) a
where rk=1