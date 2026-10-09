
/*
PROJECT: SQL Practice and Agriculture Database
MODULE: 01 - SQL Basics
FILE: select.sql

OBJECTIVE:
Practise retrieving data from the employees table.

TABLE:
employees

QUESTIONS:

1. Display all employee records.
2. Display only employee names and departments.
3. Display employee names, job titles, and salaries.
4. Display the first five employee records.
5. Display employee ID, first name, and hire date.
   */

-- Q1. Display all employee records.
SELECT *
FROM employees;

-- Q2. Display employee names and departments.
SELECT first_name, last_name, department
FROM employees;

-- Q3. Display names, job titles, and salaries.
SELECT first_name, last_name, job_title, salary
FROM employees;

-- Q4. Display the first five employee records.
SELECT *
FROM employees
LIMIT 5;

-- Q5. Display employee IDs, first names, and hire dates.
SELECT employee_id, first_name, hire_date
FROM employees;
