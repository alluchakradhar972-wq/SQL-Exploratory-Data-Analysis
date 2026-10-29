--What are the total sales?
SELECT SUM(sales_amount) AS total_sales_amount FROM gold.fact_sales

--How many items are sold?
SELECT SUM(sales_quantity) AS total_sales_quantity FROM gold.fact_sales

--what is the average selling price?
SELECT AVG(price) AS avg_selling_price FROM gold.fact_sales

--What is the total no of orders?
SELECT COUNT(order_number) AS total_orders FROM gold.fact_sales
SELECT COUNT(DISTINCT order_number) AS total_orders FROM gold.fact_sales

--WHAT is the total no of products ?
SELECT COUNT(product_id) AS total_products FROM gold.dim_products
SELECT COUNT(DISTINCT product_id) AS total_products FROM gold.dim_products

--What is the total no of customers?
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM gold.dim_customers

--What is the total no of customers that has placed an order?
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM gold.fact_sales