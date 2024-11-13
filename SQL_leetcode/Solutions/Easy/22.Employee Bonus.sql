WITH cte AS t1 (
    SELECT name,bonus
    FROM Employee
    LEFT JOIN Bonus USING (empId)
)

SELECT name, bonus 
FROM t1 
WHERE bonus < 100 or bonus is NULL
