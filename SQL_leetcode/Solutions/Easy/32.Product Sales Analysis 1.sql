SELECT S.product_name,P.year,P.price
FROM Sales S
JOIN  Product P ON 
S.product_id = P.product_id
