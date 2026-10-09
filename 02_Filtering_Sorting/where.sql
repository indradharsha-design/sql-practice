/*
PROJECT: SQL Practice
MODULE: 01 - SQL Basics
FILE: where.sql

OBJECTIVE:
Filter employee records using conditions.
*/

-- Q1. Find employees working in the IT department.
SELECT *
FROM employees
WHERE department = 'IT';

-- Q2. Find employees earning more than $80,000.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > 80000;

-- Q3. Find employees working in Newark.
SELECT first_name, last_name, city
FROM employees
WHERE city = 'Newark';

-- Q4. Find IT employees earning more than $85,000.
SELECT first_name, last_name, salary
FROM employees
WHERE department = 'IT'
AND salary > 85000;

-- Q5. Find employees hired on or after January 1, 2022.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '2022-01-01';

-- Q6. Find employees who work in either IT or Finance.
SELECT first_name, last_name, department
FROM employees
WHERE department IN ('IT', 'Finance');

-- Q7. Find employees whose salary is between $70,000 and $90,000.
SELECT first_name, last_name, salary
FROM employees
WHERE salary BETWEEN 70000 AND 90000;

-- Q8. Find employees whose first name starts with 'M'.
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'M%';
