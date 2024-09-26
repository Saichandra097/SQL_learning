WITH cte1 AS (
    SELECT 
        DepartmentId, 
        Name AS Employee, 
        Salary, 
        DENSE_RANK() OVER (PARTITION BY DepartmentId ORDER BY Salary DESC) AS rnk
    FROM Employee
)
SELECT 
    d.Name AS Department, 
    cte1.Employee, 
    cte1.Salary
FROM cte1
JOIN Department d ON cte1.DepartmentId = d.Id
WHERE rnk <= 3
ORDER BY d.Name, cte1.Salary DESC;
