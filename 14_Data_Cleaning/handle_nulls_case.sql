
/*
PROJECT: SQL Practice
MODULE: 14 - Data Cleaning
FILE: handle_nulls_case.sql
CONCEPT: Categorize missing salary values
*/

SELECT
    employee_id,
    first_name,
    salary,
    CASE
        WHEN salary IS NULL THEN 'Missing Salary'
        WHEN salary = 0 THEN 'Zero Salary'
        ELSE 'Salary Available'
    END AS salary_status
FROM employees;