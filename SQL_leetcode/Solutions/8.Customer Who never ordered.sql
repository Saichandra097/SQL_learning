select c.name as Customers
from Customers c 
LEFT JOIN orders o ON c.id = o.customerID
where o.customerID is null 

find other solution also