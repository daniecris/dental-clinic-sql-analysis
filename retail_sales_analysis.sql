-- Retail sales SQL Analysis
-- Database: retail_sales 
-- DBMS: PostgreSQL

--1.CREATE TABLE
CREATE TABLE sales(
sales_id INTEGER PRIMARY KEY,
sale_date DATE NOT NULL,
product VARCHAR(100) NOT NULL,
category VARCHAR(50) NOT NULL,
quantity INTEGER NOT NULL,
unit_price NUMERIC(10, 2) NOT NULL,
region VARCHAR(50) NOT NULL
);

--2.INSERT DATA
INSERT INTO sales(sales_id,sale_date,product,category,quantity,unit_price,region)
VALUES 
(1, '2024-01-05', 'Laptop', 'Electronics', 2, 899.99, 'North'),
(2, '2024-01-06', 'Headphones', 'Electronics', 5, 49.99, 'South'),
(3, '2024-01-07', 'Office Chair', 'Furniture', 3, 129.99, 'East'),
(4, '2024-01-08', 'Desk', 'Furniture', 1, 249.99, 'West'),
(5, '2024-01-09', 'Smartphone', 'Electronics', 4, 699.99, 'North'),
(6, '2024-01-10', 'Notebook', 'Stationery', 10, 2.99, 'South'),
(7, '2024-01-11', 'Pen', 'Stationery', 20, 1.50, 'East'),
(8, '2024-01-12', 'Monitor', 'Electronics', 2, 199.99, 'West'),
(9, '2024-01-13', 'Bookshelf', 'Furniture', 2, 159.99, 'North'),
(10, '2024-01-14', 'Backpack', 'Accessories', 3, 39.99, 'South'),
(11, '2024-01-15', 'Keyboard', 'Electronics', 6, 29.99, 'East'),
(12, '2024-01-16', 'Mouse', 'Electronics', 8, 19.99, 'West'),
(13, '2024-01-17', 'Table Lamp', 'Furniture', 4, 34.99, 'North'),
(14, '2024-01-18', 'Printer', 'Electronics', 2, 149.99, 'South'),
(15, '2024-01-19', 'Stapler', 'Stationery', 7, 8.99, 'East'),
(16, '2024-01-20', 'Sofa', 'Furniture', 1, 599.99, 'West'),
(17, '2024-01-21', 'Tablet', 'Electronics', 3, 329.99, 'North'),
(18, '2024-01-22', 'Water Bottle', 'Accessories', 12, 14.99, 'South'),
(19, '2024-01-23', 'Calculator', 'Stationery', 5, 12.99, 'East'),
(20, '2024-01-24', 'Dining Table', 'Furniture', 1, 449.99, 'West');

--3.ANALYSIS
--Total revenue
SELECT SUM(quantity * unit_price) AS total_revenue
FROM sales;

--Total units sold
SELECT SUM (quantity) AS total_units_sold
FROM sales;

--Average unit price
SELECT AVG(unit_price)
FROM sales;

--Highest unit price
SELECT MAX(unit_price)
FROM sales;

--Lowest unit price
SELECT MIN(unit_price)
FROM sales;

--Sales by product category
SELECT category, SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC; 

--Sales by region
SELECT region, SUM(quantity * unit_price) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC; 

--Top 5 best-selling products by total revenue
SELECT product, category, SUM(quantity * unit_price) AS total_revenue
FROM sales 
GROUP BY product, category
ORDER BY total_revenue DESC
limit 5; 

-- Daily sales
SELECT sale_date, SUM(quantity * unit_price) AS daily_revenue, SUM(quantity) AS units_sold
FROM sales
GROUP BY sale_date
ORDER BY sale_date ASC; 

