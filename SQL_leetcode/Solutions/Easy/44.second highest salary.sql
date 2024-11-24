select max(salary) from Employee
where salary!=  (select  salary from Employee)