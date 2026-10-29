--Find total revenue genrated by each customer
SELECT
c.customer_id,
c.first_name,
c.last_name,
SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales AS f
LEFT JOIN gold.dim_customers AS c
ON f.customer_id =c.customer_id
GROUP BY c.customer_id,
c.first_name,
c.last_name
ORDER BY total_revenue DESC