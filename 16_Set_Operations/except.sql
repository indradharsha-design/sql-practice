/*
PROJECT: SQL Practice
MODULE: 16 - Set Operations
FILE: except.sql
CONCEPT: EXCEPT
*/

SELECT department
FROM employees

EXCEPT

SELECT department_name
FROM departments;

/*How it works:
- First query: departments found in employees.
- Second query: departments listed in departments.
- Result: department values from the first query that are absent from the second.
Duplicate rows are removed.*/

--reverse
SELECT department_name
FROM departments

EXCEPT

SELECT department
FROM employees;