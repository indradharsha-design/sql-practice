/*
PROJECT: SQL Practice
MODULE: 18 - Business Case Studies
FILE: employee_business_questions.sql
CONCEPT: Employee Business Analysis


Challenge 1: Department salary expense
Business question: The HR team wants to know the total salary expense for each department, with the highest-expense department first.
Write a query that:
    1. Displays department.
    2. Calculates total salary using SUM(salary).
    3. Names the calculated column total_salary.
    4. Groups employees by department.
    5. Sorts the results from highest to lowest total salary.*/

SELECT 
    department,
    SUM(salary) as total_salary
FROM employees
group by department
order by total_salary DESC;



/*Challenge 2 of 3: Identify understaffed departments
The HR team wants to identify departments with fewer than 3 employees.
Write a query that:
1. Displays department.
2. Counts employees as employee_count.
3. Groups by department.
4. Shows only departments with fewer than 3 employees.
5. Sorts by employee count, lowest first.*/

SELECT 
    department,
    COUNT(*) as employee_count
from employees
group by department
having COUNT(*) < 3
order by employee_count ASC;


/*Challenge 3 of 3: Highest-paid employee in each department
Display each department's highest-paid employee, including:
    - department
    - first_name
    - salary
Use a window function to rank employees by salary within each department, 
then return only rank 1.*/


