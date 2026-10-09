
/*
PROJECT: SQL Practice
MODULE: 04 - Joins
FILE: union.sql

OBJECTIVE:
Combine query results using UNION and UNION ALL.
*/

-- Q1. Display a combined list of employee names and department managers.
SELECT
    CONCAT(first_name, ' ', last_name) AS person_name
FROM employees

UNION

SELECT manager_name AS person_name
FROM department_managers;


-- Q2. Display all employee names and department managers,
-- preserving duplicates.
SELECT
    CONCAT(first_name, ' ', last_name) AS person_name
FROM employees

UNION ALL

SELECT manager_name AS person_name
FROM department_managers;


-- Q3. Create a combined list of cities and department locations.
SELECT city AS location
FROM employees

UNION

SELECT location
FROM departments;


-- Q4. Create a combined list of cities and department locations,
-- preserving duplicates.
SELECT city AS location
FROM employees

UNION ALL

SELECT location
FROM departments;
