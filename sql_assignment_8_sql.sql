-- Q-15. Write an SQL query to fetch intersecting records of two tables.

SELECT w.first_name,w.last_name,w.salary FROM Worker w
inner join workerclone wc on w.worker_id=wc.worker_id;


-- Q-16. Write an SQL query to show records from one table that another table does not have.

 select * from worker where first_name not in(
 select first_name from worker);
