WITH cte1 AS (
    SELECT P.project_id,COUNT(E.employee_id) AS total_employee,
    DENSE_RANK() OVER( ORDER BY COUNT(E.employee_id) DESC) AS rnk
    from Employee E
    JOIN Project P 
    ON E.employee_id = P.employee_id
    GROUP BY project_id
)

SELECT project_id 
FROM cte1 
WHERE rnk = 1 