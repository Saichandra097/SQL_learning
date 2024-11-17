SELECT P.project_id,ROUND(AVG(E.experience_years),2) AS average_years
FROM Employee E
JOIN Project P
on E.employee_id=P.employee_id
GROUP BY P.project_id