/*
PROJECT: SQL Practice
MODULE: 14 - Data Cleaning
FILE: find_nulls.sql
CONCEPT: Identify missing values
*/

SELECT
    employee_id,
    first_name,
    department,
    salary
FROM employees
WHERE department IS NULL
   OR salary IS NULL;

   --Note: If your sample data has no missing values in those columns, the query will return zero rows. That's a valid result.