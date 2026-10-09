/*
PROJECT: SQL Practice
MODULE: 01 - SQL Basics
FILE: order_by.sql

OBJECTIVE:
Sort query results using ORDER BY.
*/

-- Q1. List all employees by salary, lowest to highest.
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary ASC;

-- Q2. List all employees by salary, highest to lowest.
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC;

-- Q3. Sort employees alphabetically by last name.
SELECT first_name, last_name
FROM employees
ORDER BY last_name ASC;

-- Q4. Sort employees by department, then salary from highest to lowest.
SELECT first_name, last_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;

-- Q5. List employees by hire date, newest hires first.
SELECT first_name, last_name, hire_date
FROM employees
ORDER BY hire_date DESC;

-- Q6. Sort by salary from highest to lowest.
-- If salaries tie, sort by first name alphabetically.
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC, first_name ASC;
