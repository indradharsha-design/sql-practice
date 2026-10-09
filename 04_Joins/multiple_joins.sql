/*
PROJECT: SQL Practice
MODULE: 04 - Joins
FILE: multiple_joins.sql

OBJECTIVE:
Combine employee, department, and manager information.

Question:Display each employee's full name, department, annual salary, department budget, and manager name.

Requirements:
Start from employees.
Join departments using the department name.
Join department_managers using the department ID.
Sort by department, then salary from highest to lowest.*/

SELECT
    concat(e.first_name, ' ', e.last_name) as employee_name,
    e.department,
    e.salary,
    d.annual_budget,
    dm.manager_name
FROM employees AS e
INNER JOIN departments AS d
on e.department = d.department_name
INNER JOIN department_managers AS dm
on d.department_id = dm.department_id
ORDER BY d.department_name, e.salary DESC;