
/*
PROJECT: SQL Practice
MODULE: 00 - Setup
FILE: departments.sql

OBJECTIVE:
Create a departments table for SQL JOIN practice.
*/

-- Create the departments table.
CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50),
    location VARCHAR(50),
    annual_budget DECIMAL(12, 2)
);

-- Insert sample department records.
INSERT INTO departments
(department_id, department_name, location, annual_budget)
VALUES
(1, 'IT', 'New York', 800000.00),
(2, 'HR', 'Newark', 300000.00),
(3, 'Finance', 'Boston', 500000.00),
(4, 'Marketing', 'Chicago', 400000.00),
(5, 'Research', 'New York', 600000.00);

