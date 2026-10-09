
/*
PROJECT: SQL Practice
MODULE: 04 - Joins
FILE: left_joins.sql

OBJECTIVE:
Combine employee and departmentinformation.

question: Display all departments, including departments that have no employees.

Requirements:
Show department_name, first_name, and last_name.
Use LEFT JOIN.
Match the department name to the employee department.
Sort alphabetically by department name.*/

SELECT
    d.department_name,
    e.first_name,
    e.last_name
FROM departments d
LEFT JOIN employees e
on e.department = d.department_name
ORDER BY d.department_name ASC;
