/*Project: SQL Practice
Module: 17_Query_Optimization
File: optimization_challenge.sql
Concept: Efficient filtering, column selection, and execution plans*/

--Task: The original query retrieves every column and filters by year using a function:

SELECT *
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 2022
ORDER BY hire_date;

/*Rewrite it to:
1. Retrieve only employee_id, first_name, department, and hire_date.
2. Filter using a date range instead of EXTRACT().
3. Sort by hire_date in ascending order.
4. Use EXPLAIN ANALYZE to inspect the execution plan.*/


EXPLAIN ANALYZE
SELECT employee_id, first_name, department, hire_date
FROM employees
WHERE hire_date >= DATE '2022-01-01'
  AND hire_date < DATE '2023-01-01'
ORDER BY hire_date;