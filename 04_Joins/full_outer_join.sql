/*
PROJECT: SQL Practice
MODULE: 04 - Joins
FILE: full_outer_joins.sql

OBJECTIVE:
Combine employee, department, and budget information.

question:Display all employees and all departments, including any employees or departments without a match.

Requirements:
Show employee name, employee department, department name, and annual budget.
Use FULL OUTER JOIN.
Match employees.department with departments.department_name.
Sort by department name.*/

SELECT
    e.first_name,
    e.last_name,
    e.department,
    d.department_name,
    d.annual_budget
FROM employees e
FULL OUTER JOIN departments d
on e.department = d.department_name
ORDER BY d.department_name;