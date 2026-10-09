
/*
PROJECT: SQL Practice
MODULE: 04 - Joins
FILE: joins_challenge.sql

OBJECTIVE:
Practise SQL JOINs using employees, departments,
and department_managers tables.
*/


-- Q1. Display each employee's full name, department,
-- and annual budget.
-- Sort by annual budget from highest to lowest.
SELECT 
concat(e.first_name, ' ', e.last_name) as employee_name,
e.department,
d.annual_budget
from employees e
join departments d
on e.department = d.department_name
order by d.annual_budget DESC;



-- Q2. Display all departments and their employee counts.
-- Include departments with zero employees.
-- Sort alphabetically by department name.
SELECT 
d.department_name,
count(e.employee_id) as employee_count
from departments d
left join employees e
on d.department_name = e.department
group by d.department_name
order by department_name;



-- Q3. Display employee name, department, and manager name.
-- Include only employees with a matching department and manager.

SELECT
    concat(e.first_name, ' ', e.last_name) as employee_name,
    e.department,
    dm.manager_name
FROM employees AS e
INNER JOIN departments AS d
on e.department = d.department_name
INNER JOIN department_managers AS dm
on d.department_id = dm.department_id;




-- Q4. Find departments that have no employees.
-- Display the department name and annual budget.

SELECT 
d.department_name,
d.annual_budget
from departments d
left join employees e
on d.department_name = e.department
group by d.department_name, d.annual_budget
HAVING (count(e.employee_id) =0);




-- Q5. Display each department's name, manager name,
-- and total salary paid to its employees.
-- Include only departments with employees.
-- Sort by total salary from highest to lowest.

SELECT
    e.department,
    dm.manager_name,
    sum(e.salary) as total_salary
FROM employees AS e
INNER JOIN departments AS d
on e.department = d.department_name
INNER JOIN department_managers AS dm
on d.department_id = dm.department_id
group by e.department, dm.manager_name
order by total_salary DESC;




-- Q6. Display employees whose salary is greater than
-- their department's average salary.
-- Show employee name, department, salary, and department average.

with dept_avg as (
    select department,
    avg(salary) as department_average
    from employees
    group by department)
SELECT
    concat(e.first_name, ' ', e.last_name) as employee_name,
    e.department,
    e.salary,
    d.department_average
FROM employees e
join dept_avg d
on e.department = d.department
where e.salary > d.department_average;



-- Q7. Display all employee names and department manager names
-- in one column, removing duplicates.

select 
concat(first_name, ' ', last_name) as employee_name
from employees

union

select manager_name
from department_managers;



-- Q8. Display all departments and their employee counts,
-- but include only departments with at least 3 employees.
-- Sort by employee count from highest to lowest.

SELECT 
d.department_name,
count(e.employee_id) as employee_count
from departments d
left join employees e
on d.department_name = e.department
group by d.department_name
HAVING count(e.employee_id) >=3
ORDER BY employee_count DESC;