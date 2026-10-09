
/*
PROJECT: SQL Practice
MODULE: 05 - Subqueries
FILE: scaler_subquery.sql

OBJECTIVE:
Practise SQL subqueiries using employees, departments,
and department_managers tables.

Exercise1: Scalar subquery

Task: Find employees whose salary is greater than the company's average salary.
*/

SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
--the inner query returns a single value: the average salary.
--the outer query uses that value to filter employees.
--Key concept: A scalar subquery returns a single value, typically one row and one column.

--Exercise 2: Find employees whose salary is less than the company's average salary.
SELECT *
FROM employees
WHERE salary < (
    SELECT AVG(salary)
    FROM employees
);

