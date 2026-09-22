-- Create employees table

CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    hire_date DATE
);

-- Insert sample records

INSERT INTO employees
(employee_id, first_name, last_name, department, job_title, salary, city, hire_date)
VALUES
(101, 'John', 'Smith', 'IT', 'Data Analyst', 85000.00, 'New York', '2021-03-15'),
(102, 'Priya', 'Patel', 'HR', 'HR Specialist', 65000.00, 'Newark', '2022-07-10'),
(103, 'Michael', 'Brown', 'Finance', 'Financial Analyst', 78000.00, 'Boston', '2020-11-02'),
(104, 'Sarah', 'Johnson', 'IT', 'Software Engineer', 95000.00, 'New York', '2019-06-18'),
(105, 'David', 'Williams', 'Marketing', 'Marketing Analyst', 72000.00, 'Chicago', '2023-01-09'),
(106, 'Anita', 'Kumar', 'IT', 'Data Scientist', 105000.00, 'Newark', '2020-04-22'),
(107, 'Robert', 'Davis', 'Finance', 'Accountant', 68000.00, 'Boston', '2021-09-30'),
(108, 'Emily', 'Wilson', 'HR', 'Recruiter', 70000.00, 'Chicago', '2022-02-14'),
(109, 'Daniel', 'Miller', 'IT', 'Database Administrator', 90000.00, 'New York', '2018-12-05'),
(110, 'Meera', 'Shah', 'Marketing', 'Marketing Manager', 88000.00, 'Newark', '2019-10-21'),
(111, 'James', 'Taylor', 'Finance', 'Finance Manager', 98000.00, 'Boston', '2017-05-12'),
(112, 'Lisa', 'Anderson', 'IT', 'Business Analyst', 82000.00, 'Chicago', '2023-06-01'),
(113, 'Kevin', 'Thomas', 'HR', 'HR Manager', 91000.00, 'New York', '2018-08-17'),
(114, 'Neha', 'Reddy', 'IT', 'Data Analyst', 87000.00, 'Newark', '2022-11-11'),
(115, 'Christopher', 'Moore', 'Marketing', 'Sales Analyst', 76000.00, 'Chicago', '2021-01-25');