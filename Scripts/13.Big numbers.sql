--Lets put all these numbers in one query
SELECT 'Total Sales ' AS Measure_type ,SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity ' AS Measure_type ,SUM(sales_quantity) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Avg Sales ' AS Measure_type ,AVG(price) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Orders ' AS Measure_type ,COUNT(DISTINCT order_number) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Products' AS Measure_type ,COUNT(DISTINCT product_id) AS measure_value FROM gold.dim_products
UNION ALL
SELECT 'Total Cusotmers ' AS Measure_type ,COUNT(DISTINCT customer_id) AS measure_value FROM gold.dim_customers