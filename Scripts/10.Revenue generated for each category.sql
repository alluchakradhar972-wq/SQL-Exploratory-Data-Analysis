--What is the total revenue generated for each category?
SELECT
p.category,
SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales AS f
LEFT JOIN gold.dim_products AS p
ON f.product_number =p.product_number
GROUP BY p.category
ORDER BY total_revenue DESC