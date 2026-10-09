
/*
PROJECT: SQL Practice
MODULE: 03 - Aggregations
FILE: aggregation_challenge.sql

OBJECTIVE:
Practise COUNT, SUM, AVG, MIN, MAX, GROUP BY, and HAVING.
*/

-- Q1. Count the total number of employees in the company.
SELECT 
count(*) as total_employees
from employees;

-- Q2. Find the total salary paid by the company.
SELECT 
sum(salary) as total_salary
from employees;

-- Q3. Find the average salary for each department.
SELECT 
department,
avg(salary) as average_salary
from employees
group by department;

-- Q4. Display each department and its employee count.
-- Sort by employee count from highest to lowest.
SELECT 
department,
count(*) as employee_count
from employees
group by department
order by employee_count DESC;

-- Q5. Find the highest and lowest salary in each department.
SELECT 
department,
max(salary) as highest_salary,
min(salary) as lowest_salary
from employees
group by department;

-- Q6. Display departments with more than 3 employees.
SELECT 
department,
count(*) as employee_count
from employees
group by department
having count(*) >3;

-- Q7. Display departments whose average salary exceeds $80,000.
SELECT 
department,
avg(salary) as average_salary
from employees
group by department
having avg(salary) >80000;

-- Q8. Find the total salary for each city.
-- Display only cities whose total salary exceeds $250,000.
SELECT 
city,
sum(salary) as total_salary
from employees
group by city
having sum(salary) >250000;

-- Q9. For each department, display:
-- employee count, total salary, and average salary.
-- Include only departments with at least 3 employees.
-- Sort by average salary from highest to lowest.
SELECT
department,
count(*) as employee_count,
sum(salary) as total_salary,
avg(salary) as average_salary
from employees
group by department
having count(*) >= 3
ORDER BY average_salary DESC;

-- Q10. Find departments where:
-- the average salary exceeds $75,000
-- AND the highest salary exceeds $90,000.
-- Display department, average salary, and highest salary.
SELECT
department,
avg(salary) as average_salary,
max(salary) as highest_salary
from employees
group by department
having avg(salary) >75000 and max(salary)>90000;