/*
PROJECT: SQL Practice
MODULE: 14 - Data Cleaning
FILE: coalesce.sql
CONCEPT: Replace NULL values in query results
*/

SELECT
    employee_id,
    first_name,
    COALESCE(department, 'Unknown') AS department,
    salary
FROM employees;

--Example: NULL becomes Unknown, while IT remains IT.