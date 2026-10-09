
/*
PROJECT: SQL Practice
MODULE: 03 - Aggregations
FILE: sum_avg.sql

OBJECTIVE:
Calculate totals and averages using SUM() and AVG().
*/

-- Q1. Calculate the total salary of all employees.
SELECT SUM(salary) AS total_salary
FROM employees;

-- Q2. Calculate the average salary of all employees.
SELECT AVG(salary) AS average_salary
FROM employees;

-- Q3. Calculate the total salary for each department.
SELECT
    department,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- Q4. Calculate the average salary for each department.
SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- Q5. Calculate the total and average salary for each department.
SELECT
    department,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- Q6. Calculate the total salary for each city.
SELECT
    city,
    SUM(salary) AS total_salary
FROM employees
GROUP BY city
ORDER BY total_salary DESC;
