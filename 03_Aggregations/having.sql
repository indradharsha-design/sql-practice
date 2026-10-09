
/*
PROJECT: SQL Practice
MODULE: 03 - Aggregations
FILE: having.sql

OBJECTIVE:
Filter grouped results using HAVING.
*/

-- Q1. Display departments with more than 3 employees.
SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 3;

-- Q2. Display departments with an average salary above $80,000.
SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 80000;

-- Q3. Display cities with at least 4 employees.
SELECT
    city,
    COUNT(*) AS employee_count
FROM employees
GROUP BY city
HAVING COUNT(*) >= 4;

-- Q4. Display departments whose total salary exceeds $250,000.
SELECT
    department,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 250000;

-- Q5. Find departments with more than 2 employees
-- and an average salary above $80,000.
SELECT
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING COUNT(*) > 2
   AND AVG(salary) > 80000;

-- Q6. Display departments with at least 3 employees,
-- ordered by average salary from highest to lowest.
SELECT
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING COUNT(*) >= 3
ORDER BY average_salary DESC;
