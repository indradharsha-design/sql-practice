/*
PROJECT: SQL Practice
MODULE: 14 - Data Cleaning
FILE: nullif.sql
CONCEPT: Convert a specific value into NULL
*/

SELECT
    employee_id,
    first_name,
    NULLIF(salary, 0) AS cleaned_salary
FROM employees;

/*Key concept
NULLIF(value1, value2) returns:
- NULL if both values are equal.
- value1 otherwise.*/



--Why useful? NULLIF() can help prevent division-by-zero errors.
SELECT 100 / NULLIF(0, 0);

--Instead of a division-by-zero error, the result is NULL.