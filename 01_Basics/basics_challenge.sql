/*
PROJECT: SQL Practice
MODULE: 01 - SQL Basics
FILE: basics_challenge.sql

RULES:

* Solve each question independently.
* Use only SELECT, DISTINCT, WHERE, ORDER BY, LIMIT, and aliases.
* Do not look up the answers before attempting the questions.
  */

-- Q1. Display the first name, last name, department, and salary
-- of all employees.
SELECT 
first_name, 
last_name, 
department, 
salary
from employees;

-- Q2. List all unique job titles.
SELECT DISTINCT job_title
from employees;

-- Q3. Find employees who work in Newark and earn more than $80,000.
SELECT 
first_name,
last_name, 
salary
from employees
where city = 'Newark' 
and salary >80000;

-- Q4. Display the five highest-paid employees.
-- Show full name and salary.
SELECT
CONCAT(first_name, ' ', last_name) AS full_name,
salary
from employees
order by salary DESC 
limit 5;

-- Q5. Find employees hired after January 1, 2021.
-- Display newest hires first.
SELECT 
first_name,
last_name,
hire_date
from employees
where hire_date >'2021-01-01'
order by hire_date Desc;

-- Q6. List employees who work in IT, Finance, or HR.
-- Sort by department alphabetically.
SELECT 
first_name,
last_name,
department
from employees
where department IN ('IT', 'Finance', 'HR')
order by department ASC;

-- Q7. Display the three lowest-paid employees.
-- Rename salary as annual_salary.
SELECT 
first_name,
last_name,
salary as annual_salary
from employees
order by salary ASC 
limit 3;


-- Q8. Find employees whose last name ends with 'son'.
SELECT 
first_name,
last_name
from employees
where last_name like '%son';


-- Q9. Display unique combinations of department and city.
SELECT DISTINCT
department,
city
from employees;


-- Q10. Display the five most recently hired employees.
-- Show first name, last name, hire date, and department.
-- Use meaningful column aliases.
SELECT 
CONCAT(first_name, ' ', last_name) AS full_name,
hire_date,
department
from employees
ORDER BY hire_date DESC 
limit 5;