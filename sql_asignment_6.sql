
-- Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014.

select * from worker where year(JOINING_DATE)=2014 AND month(JOINING_DATE)=2;

-- Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1;

-- Q-3. How to remove duplicate rows from Employees table.

select *, COUNT(*) AS COUNTS FROM WORKER GROUP BY WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT

HAVING COUNT(*) >=1