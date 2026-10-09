
/*
PROJECT: SQL Practice
MODULE: 04 - Joins
FILE: inner_joins.sql

OBJECTIVE:
Combine employee, salary and budget information.

The relationship is: 
employees.department = departments.department_name

Question:
Display each employee's first name, last name, salary, and department's annual budget.

Requirements:
Use INNER JOIN.
Match the two tables using their department names.
Use meaningful column aliases.
sort by salary from highest to lowest.
*/

SELECT
    e.first_name,
    e.last_name,
    e.salary,
    d.annual_budget
FROM employees e
INNER JOIN departments d
on e.department = d.department_name
ORDER BY e.salary DESC;