/*
PROJECT: SQL Practice
MODULE: 04 - Joins
FILE: right_joins.sql

OBJECTIVE:
Combine employee, department, and budget information.

question: Display all employees and their matching department information, including employees whose department has no match in the departments table.

Requirements:
Show employee first name, last name, department, and annual budget.
Use RIGHT JOIN.
Match employees.department with departments.department_name.
Sort by employee name.*/

SELECT
    e.first_name,
    e.last_name,
    e.department,
    d.annual_budget
FROM departments d
RIGHT JOIN employees e
on e.department = d.department_name
ORDER BY e.first_name, e.last_name;