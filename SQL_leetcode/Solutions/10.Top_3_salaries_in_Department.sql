WITH RankedEmployees AS (
    SELECT 
        departmentId, 
        name as Employee, 
        salary,
        DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) as rnk
    FROM Employee
)
SELECT 
    D.name as Department, 
    E.Employee, 
    E.salary as Salary
FROM 
    RankedEmployees E 
JOIN 
    Department D 
    ON E.departmentId = D.id
WHERE 
    E.rnk <= 3;
