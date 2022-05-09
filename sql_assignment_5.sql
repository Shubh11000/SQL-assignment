-- Q-1. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.

Select * from Worker where FIRST_NAME not in ('Vipul','Satish');

-- Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

select * from worker where first_name like '_____h';

-- Q-3. Write a query to validate Email of Employee.

select * from Worker where Email like '%@gmail.com';

