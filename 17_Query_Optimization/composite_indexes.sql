/*
PROJECT: SQL Practice
MODULE: 17 - Query Optimization
FILE: composite_indexes.sql
CONCEPT: Composite Index
*/

CREATE INDEX idx_employees_department_salary
ON employees (department, salary);

EXPLAIN ANALYZE
SELECT employee_id, first_name, department, salary
FROM employees
WHERE department = 'IT'
  AND salary > 70000;


/*Key idea
The column order matters. This index is ordered by department first, then salary.
It may also help queries filtering by department alone, 
but is generally less useful for queries filtering only by salary.