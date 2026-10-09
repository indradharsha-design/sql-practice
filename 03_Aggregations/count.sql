
/*
PROJECT: SQL Practice
MODULE: 03 - Aggregations
FILE: count.sql

OBJECTIVE:
Count records using COUNT() and GROUP BY.
*/

-- Q1. Count the total number of employees.
SELECT COUNT(*) AS total_employees
FROM employees;

-- Q2. Count the number of employees in each department.
SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- Q3. Count the number of employees in each city.
SELECT
    city,
    COUNT(*) AS employee_count
FROM employees
GROUP BY city;

-- Q4. Count employees in each department and city combination.
SELECT
    department,
    city,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department, city;

-- Q5. Count employees in each department,
-- showing departments with the most employees first.
SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department
ORDER BY employee_count DESC;
