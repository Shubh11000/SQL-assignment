-- Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

Select RTRIM(FIRST_NAME) from Worker;

-- Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
 
 select distinct length(department) from worker;


-- Q-3. Write an SQL query to fetch nth max salaries from a table.

select * from (
select *, row_number()over (order by salary desc)rn
from worker) x
where x.rn=2;

-- To find to the 2nd highest sal set n = 2
-- To find 3rd highest sal set n = 3 and so on.

select * from worker