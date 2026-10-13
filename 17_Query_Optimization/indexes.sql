/*
PROJECT: SQL Practice
MODULE: 17 - Query Optimization
FILE: indexes.sql
CONCEPT: CREATE INDEX
*/

CREATE INDEX idx_employees_salary
ON employees (salary);

EXPLAIN ANALYZE
SELECT employee_id, first_name, salary
FROM employees
WHERE salary > 70000;


/*
Key points
- CREATE INDEX creates an index on the salary column.
- Queries filtering by salary may benefit from it.
- Indexes use storage and can slow down INSERT, UPDATE, and DELETE operations 
because the index must also be maintained.
- Your small sample table may still use a sequential scan. 
PostgreSQL chooses the plan it estimates will be cheapest.

If you rerun the script, PostgreSQL may report that the index already exists.*/