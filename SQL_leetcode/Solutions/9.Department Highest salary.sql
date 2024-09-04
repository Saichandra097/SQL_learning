
select d.name as Department,e.name as Employee,e.salary as Salary
from Employee e 
LEFT JOIN Department d ON e.departmentID = d.id
where 
(
    Employee.departmentId,salary
) IN 
(
   select departmentId,MAX(Salary) from
   Employee
   group by departmentId
)
