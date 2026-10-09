
/*
PROJECT: SQL Practice

MODULE: 05 - Subqueries

FILE: correlated_subquery.sql

CONCEPTS:
1. Correlated subqueries
2. Comparing rows with group-level values

OBJECTIVE:
Use subqueries that reference columns from the outer query
to compare individual records with their group.
*/


-- Example 1: Find employees earning above their department's average salary

SELECT
    e.first_name,
    e.last_name,
    e.department,
    e.salary
FROM employees AS e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees AS e2
    WHERE e2.department = e.department
)
ORDER BY e.department, e.salary DESC;

/*
Exercise 2: Department's highest-paid employee
Task: Find the highest-paid employee or employees in each department.

Return:
first_name
last_name
department
salary */


SELECT
    e.first_name,
    e.last_name,
    e.department,
    e.salary
FROM employees AS e
WHERE e.salary = (
SELECT max(e2.salary)
    FROM employees AS e2
    WHERE e2.department = e.department
)
ORDER BY e.department;

/*
Exercise 3: Employees earning more than at least one employee in another department
Task: Find employees whose salary is greater than the minimum salary in the Finance department.

Return:
first_name
last_name
department
salary */

SELECT
    e.first_name,
    e.last_name,
    e.department,
    e.salary
FROM employees AS e
WHERE e.salary > (
SELECT min(e2.salary)
    FROM employees AS e2
    WHERE e2.department = 'Finance'
)
ORDER BY e.salary DESC;