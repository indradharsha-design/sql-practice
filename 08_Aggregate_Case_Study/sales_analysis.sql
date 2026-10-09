
/*
PROJECT: SQL Practice

MODULE: 08 - Aggregate Case Study

FILE: sales_analysis.sql

CONCEPTS:
1. GROUP BY
2. COUNT and SUM
3. AVG, MIN and MAX
4. HAVING
5. ORDER BY

OBJECTIVE:
Analyze sales data using aggregate functions.
*/


CREATE TABLE sales (
    sale_id INT,
    salesperson VARCHAR(50),
    region VARCHAR(30),
    product VARCHAR(50),
    quantity INT,
    sale_amount DECIMAL(10, 2)
);

INSERT INTO sales VALUES
(1, 'Arun', 'East', 'Laptop', 2, 2000.00),
(2, 'Priya', 'West', 'Phone', 5, 2500.00),
(3, 'Arun', 'East', 'Phone', 3, 1500.00),
(4, 'Meena', 'South', 'Laptop', 1, 1000.00),
(5, 'Priya', 'West', 'Laptop', 2, 2000.00),
(6, 'Kumar', 'East', 'Tablet', 4, 1200.00),
(7, 'Meena', 'South', 'Phone', 2, 1000.00),
(8, 'Kumar', 'East', 'Laptop', 1, 1000.00),
(9, 'Priya', 'West', 'Tablet', 3, 900.00),
(10, 'Meena', 'South', 'Tablet', 5, 1500.00);


--Ex.1
/*For each region, calculate:
    Total sales amount
    Number of sales records
    Average sale amount
Sort the results by total sales amount, highest first.*/

SELECT 
    region,
    SUM(sale_amount) as total_sales,
    count(*) as sales_records,
    AVG(sale_amount) as average_sales
from sales
group by region
order by total_sales DESC;

--Ex.2
--each salesperson's total sales and number of sales records, 
--displaying only salespeople whose total sales exceed 2000, sorted by total sales descending.

SELECT 
    salesperson,
    SUM(sale_amount) as total_sales,
    count(*) as sales_records
from sales
group by salesperson
having SUM(sale_amount)>2000
order by total_sales DESC;


--Ex.3
--Find the total sales for each product. 
--Display only products with at least 3 sales records, 
--and sort by the number of records from highest to lowest.

SELECT 
    product,
    SUM(sale_amount) as total_sales,
    count(*) as sales_records
from sales
group by product
having count(*) >=3
order by sales_records DESC;

--Ex.4
--Find the highest and lowest individual sale amounts for each region.
--Display region, MAX(sale_amount) as highest_sale, and MIN(sale_amount) as lowest_sale.
--Include only regions where the highest sale exceeds 1500.
--Sort by highest_sale descending.

