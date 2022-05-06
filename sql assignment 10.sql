-- Q-19. Write an SQL query to determine the 5th highest salary without using TOP or limit
-- method.

	select * from (
	select * ,
	row_number()over(order by salary desc) as rn
	from employee) x
	where x.rn=5; 


-- Q-20. Write an SQL query to fetch the list of employees with the same salary.
SELECT e.emp_name,e.salary
FROM employee e
INNER JOIN employee a ON e.salary = a.salary and e.emp_name <> a.emp_name;


	select  e.emp_name,e.salary from employee e, employee a
	where e.salary = a.salary and e.emp_name != a.emp_name;




