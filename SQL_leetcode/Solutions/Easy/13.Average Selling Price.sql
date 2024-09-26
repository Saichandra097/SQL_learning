WITH t1 AS (
    SELECT u.product_id, u.purchase_date, u.units, p.price
    FROM UnitsSold u
    JOIN Prices p
    ON u.product_id = p.product_id 
       AND u.purchase_date BETWEEN p.start_date AND p.end_date
)

SELECT product_id , 
ROUND(SUM(price * units)/SUM(units),2) AS average_price 
FROM t1 
GROUP BY
product_id
