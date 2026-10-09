/*

PROJECT: SQL Practice

MODULE: 05 - Subqueries

FILE: in_subquery.sql

OBJECTIVE:

Practise SQL subqueries using the IN operator
to find employees working in departments
located in New York.

*/
--Write a query to find employees who belong to departments located in New York.
SELECT
    first_name,
    last_name,
    department
FROM employees
WHERE department IN (
    SELECT department_name
    FROM departments
    WHERE location = 'New York'
)
ORDER BY department, last_name;