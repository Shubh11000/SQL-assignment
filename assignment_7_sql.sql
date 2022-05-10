-- Q-13. Write an SQL query to show only odd rows from a table.

select * from worker
  where  mod (worker_id, 2) <> 0;
  
-- Q-14. Write an SQL query to clone a new table from another table.

CREATE TABLE WorkerClone LIKE Worker;