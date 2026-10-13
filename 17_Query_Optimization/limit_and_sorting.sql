/*
PROJECT: SQL Practice
MODULE: 17 - Query Optimization
FILE: limit_and_sorting.sql
CONCEPT: LIMIT and ORDER BY
*/

SELECT employee_id, first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;


/*Why this matters
- ORDER BY salary DESC sorts employees from highest to lowest salary.
- LIMIT 5 returns only the first five rows.
- This is useful when building reports such as top-paid employees or top-selling products.

Important: LIMIT reduces the number of rows returned, 
but PostgreSQL may still need to scan or sort many rows to find the top five. 
An appropriate index can sometimes help.