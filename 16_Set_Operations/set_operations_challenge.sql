/*Challenge

--1.Display all unique department names from 
employees.department and departments.department_name.*/


SELECT department
FROM employees

UNION 

SELECT department_name
FROM departments;


--2. Display department names that appear in both tables.

SELECT department
FROM employees

INTERSECT

SELECT department_name
FROM departments;

--3. Display department names listed in departments that have
--no matching value in employees.

SELECT department_name
FROM departments

EXCEPT

SELECT department
FROM employees;