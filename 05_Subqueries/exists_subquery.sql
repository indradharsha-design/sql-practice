/*
PROJECT: SQL Practice

MODULE: 05 - Subqueries

FILE: exists_subquery.sql

CONCEPTS:
1. EXISTS operator
2. Correlated subqueries
3. Checking for matching records

OBJECTIVE:
Identify records in one table that have matching
records in another table using EXISTS.
*/


-- Example 1: Find departments that have employees

SELECT
    d.department_name,
    d.location
FROM departments AS d
WHERE EXISTS (
    SELECT 1
    FROM employees AS e
    WHERE e.department = d.department_name
)
ORDER BY d.department_name;




/*Example 2: Find employees with a matching department record
Task: Find employees whose department is listed in the departments table.
Return:
first_name
last_name
department
salary
*/

SELECT
    e.first_name,
    e.last_name,
    e.department,
    e.salary
FROM employees AS e
WHERE EXISTS (
    SELECT 1
    FROM departments AS d
    WHERE e.department = d.department_name
)
ORDER BY e.department, e.last_name;

/*
Exercise 3: Find departments with no employees
Task: Write a query to find departments that currently have zero employees.

Return these columns:
department_name
location
annual_budget */


SELECT
    d.department_name,
    d.location,
    d.annual_budget
FROM departments AS d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees AS e
    WHERE e.department = d.department_name
)
ORDER BY d.department_name;

