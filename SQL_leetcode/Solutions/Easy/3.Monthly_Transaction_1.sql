select left(trans_date,7) as month, 
country,
couunt(id) as trans_count,
SUM(state='approved') as approved_count,
SUM(amount) as trans_total_amount,


sum((state='approved')*amount) as approved_total_amount

from Transactions
group by month and country 


