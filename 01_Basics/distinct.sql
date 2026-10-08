/*
PROJECT: SQL Practice
MODULE: 01 - SQL Basics
FILE: distinct.sql

OBJECTIVE:
Retrieve unique values from the employees table.
*/

-- Q1. List all unique departments.
SELECT DISTINCT department
FROM employees;

-- Q2. List all unique cities.
SELECT DISTINCT city
FROM employees;

-- Q3. Find unique combinations of department and city.
SELECT DISTINCT department, city
FROM employees;

-- Q4. Count the number of distinct departments.
SELECT COUNT(DISTINCT department) AS total_departments
FROM employees;
