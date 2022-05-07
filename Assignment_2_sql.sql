select * from worker;
-- Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

select substring(first_name,1,3) from worker;

-- Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.

select INSTR(first_name,binary 'a') from worker  where first_name='Amitabh';
 
 
-- Q-3. Write an SQL query to print the name of employees having the highest salary in each department.

 select w.department,w.first_name,w.salary from 
 (select max(salary)as max_salary, department  from worker group by department) as worker_temp
 inner join worker w on worker_temp.department=w.department
 and  worker_temp.max_salary=w.salary
 
 
 
 