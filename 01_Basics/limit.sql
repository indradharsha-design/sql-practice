/*
PROJECT: SQL Practice
MODULE: 01 - SQL Basics
FILE: limit.sql

OBJECTIVE:
Restrict the number of rows returned by a query.
*/

-- Q1. Display the first five employees.
SELECT *
FROM employees
LIMIT 5;

-- Q2. Display the three highest-paid employees.
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Q3. Display the five most recently hired employees.
SELECT first_name, last_name, hire_date
FROM employees
ORDER BY hire_date DESC
LIMIT 5;

-- Q4. Display the three lowest-paid employees.
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary ASC
LIMIT 3;

-- Q5. Display the next five employees after skipping the first five,
-- ordered by employee ID.
SELECT employee_id, first_name, last_name
FROM employees
ORDER BY employee_id
LIMIT 5 OFFSET 5;
