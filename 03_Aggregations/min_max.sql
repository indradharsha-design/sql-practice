
/*
PROJECT: SQL Practice
MODULE: 03 - Aggregations
FILE: min_max.sql

OBJECTIVE:
Find minimum and maximum values using MIN() and MAX().
*/

-- Q1. Find the lowest salary among all employees.
SELECT MIN(salary) AS lowest_salary
FROM employees;

-- Q2. Find the highest salary among all employees.
SELECT MAX(salary) AS highest_salary
FROM employees;

-- Q3. Find the earliest hire date.
SELECT MIN(hire_date) AS earliest_hire_date
FROM employees;

-- Q4. Find the most recent hire date.
SELECT MAX(hire_date) AS latest_hire_date
FROM employees;

-- Q5. Find the lowest and highest salary in each department.
SELECT
    department,
    MIN(salary) AS lowest_salary,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- Q6. Find the earliest and latest hire date in each department.
SELECT
    department,
    MIN(hire_date) AS earliest_hire_date,
    MAX(hire_date) AS latest_hire_date
FROM employees
GROUP BY department;

-- Q7. Display departments from highest to lowest maximum salary.
SELECT
    department,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department
ORDER BY highest_salary DESC;
