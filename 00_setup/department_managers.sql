
/*
PROJECT: SQL Practice
MODULE: 00 - Setup
FILE: department_managers.sql

OBJECTIVE:
Create a table containing department manager information.
*/

CREATE TABLE department_managers (
    department_id INT,
    manager_name VARCHAR(100)
);

INSERT INTO department_managers
(department_id, manager_name)
VALUES
(1, 'Anita Kumar'),
(2, 'Kevin Thomas'),
(3, 'James Taylor'),
(4, 'Meera Shah'),
(5, 'Unassigned');