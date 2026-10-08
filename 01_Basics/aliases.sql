/*
PROJECT: SQL Practice
MODULE: 01 - SQL Basics
FILE: aliases.sql

OBJECTIVE:
Rename columns and calculated expressions using aliases.
*/

-- Q1. Display employee names with clearer column headings.
SELECT
first_name AS employee_first_name,
last_name AS employee_last_name
FROM employees;

-- Q2. Display employee names and rename salary.
SELECT
first_name,
last_name,
salary AS annual_salary
FROM employees;

-- Q3. Combine first and last names into one column.
SELECT
CONCAT(first_name, ' ', last_name) AS full_name,
department
FROM employees;

-- Q4. Display monthly salary based on annual salary.
SELECT
first_name,
last_name,
salary AS annual_salary,
salary / 12 AS monthly_salary
FROM employees;

-- Q5. Count employees in each department.
SELECT
department,
COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- Q6. Calculate the average salary for each department.
SELECT
department,
AVG(salary) AS average_salary
FROM employees
GROUP BY department;
