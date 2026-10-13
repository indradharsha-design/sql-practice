/*
PROJECT: SQL Practice
MODULE: 17 - Query Optimization
FILE: join_indexes.sql
CONCEPT: Indexes on Join Columns
*/

CREATE INDEX idx_department_managers_department_id
ON department_managers (department_id);

EXPLAIN ANALYZE
SELECT
    d.department_name,
    dm.department_id
FROM departments d
JOIN department_managers dm
    ON d.department_id = dm.department_id;


/*Key points
- The index may help PostgreSQL find matching department_id values efficiently.
- Primary keys already have indexes in PostgreSQL, 
so you generally don't need to create another index on departments.department_id 
if it's already the primary key.
- Indexes aren't automatically beneficial for every join. 
Table size, existing indexes, and data distribution all matter.