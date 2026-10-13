/*
PROJECT: SQL Practice
MODULE: 16 - Set Operations
FILE: intersect.sql
CONCEPT: INTERSECT
*/

SELECT department
FROM employees

INTERSECT

SELECT department_name
FROM departments;

/*
How it works:
- First query: departments represented in employees.
- Second query: departments listed in departments.
- Result: department names appearing in both results.
- Duplicate rows are removed.*/