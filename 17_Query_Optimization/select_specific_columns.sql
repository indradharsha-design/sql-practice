/*
Project: SQL Practice
Module: 17_Query_Optimization
File: select_specific_columns.sql
Concept: Retrieve only the columns you need
*/

--Less efficient for many real-world queries
SELECT *
FROM employees
WHERE department = 'IT';


--Better practice

SELECT employee_id, first_name, salary
FROM employees
WHERE department = 'IT';


/*Why?
- Retrieves only the required columns.
- Reduces unnecessary data transfer when the table has many columns.
- Can sometimes enable an index-only scan, depending on the index and query.