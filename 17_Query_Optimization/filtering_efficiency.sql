/*
PROJECT: SQL Practice
MODULE: 17 - Query Optimization
FILE: filtering_efficiency.sql
CONCEPT: Efficient Filtering with Date Ranges, Avoid unnecessary functions in WHERE filters.
*/


--Less index-friendly pattern:
SELECT employee_id, first_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 2022;

--Prefer this range-based pattern:
SELECT employee_id, first_name, hire_date
FROM employees
WHERE hire_date >= DATE '2022-01-01'
  AND hire_date < DATE '2023-01-01';

  /*
  Why prefer the second version?
- It avoids applying a function to every hire_date value.
- It can make better use of a regular index on hire_date, 
if one exists and the query planner chooses to use it.
- The date range includes all times on December 31, 
unlike a potentially incorrect upper bound of midnight on that date.
Important: With a small table, both queries may perform similarly. 
Optimization benefits become more apparent with larger tables and suitable indexes.
*/